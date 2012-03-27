class ApisController < ApplicationController

  hobo_model_controller

  auto_actions :none
  index_action :sitemap, :press

  def sitemap
    @categories = Category.find(:all, :joins => :site, :conditions => {:sites => {:name => I18n.locale}})
  end

  def press
    @pressreleases = Pressrelease.find(:all, :joins => :site, :conditions => {:sites => {:name => I18n.locale}})
  end

  #Contact action is POST delimited in routes.rb
  def contact
    
    #Route email to proper person
    case I18n.locale 
      when :us
        @recipient = 'bclos@seagamfg.com'
        @site = 1
      when :uk
        @recipient = 'twitter@seagamfg.com'
        @site = 2
      when :in
        @recipient = 'vandrews@seagamfg.com'
        @site = 3
      else
        @recipient = 'jwelt@seagamfg.com'
        @site = 1
    end


    #Strip Out Piwik Cookie ID
    @cookies = request.cookies
    @cookies.keys.each do |key|
      
      @aKey = key.split('.')
      if @aKey[0] == '_pk_id'
        @site = @aKey[1]
        @piwik_cookie = @cookies[key].split('.')[0] 
      end
    end

     #Record Contact Type For Lead Validation
    case params['type'].to_i
      when 1
        @lead_type = 'general inquiry'
        params['type'] = 'General Inquiry'
      when 2
        @lead_type = 'customer care'
        params['type'] = 'Customer Care Request'
      when 3
        @lead_type = 'parts request'
        params['type'] = 'Parts Request'
      else
        @lead_type = 'unknown'
        params['type'] = 'Unknown Exception In Mail Type'
    end

    #Remove the hash keys we don't need for notify
    @mail_data = params.except(:page_path, :authenticity_token, :ajax, :controller, :action)

    #Send the email as quickly as possible so that the client is not bothered by the backend processing.
    LeadMailer.notify(@recipient, @mail_data, @piwik_cookie).deliver

    #The client is waiting to make sure their request was ok, this response is handled by the form JS
    @response = { :success => true }
    render :json => @response

    #    Backend processing
    # ------------------------
    # How the data flows across our applications:
    # apis_contoller.rb => coffee-db-api (visit_profile table) => seagaStorm (Lead Profiler/Builder application)
    
    # The reason why it is done this away is that I sanitize it in coffee-script instead of opening another DB connection here
    # And if I pass the data to both applications the back queries are quicker to make
   

    require "uri"
    require "net/http"
      
    # Builds the data form, the hash keys here are important because they are used to dynamically generate the query
      
    @visitor_profile = {}
    @visitor_profile['idvisitor'] = @piwik_cookie
    @visitor_profile['name'] = params['name']
    @visitor_profile['email'] = params['email']
    @visitor_profile['business_name'] = params['business_name']
    @visitor_profile['phone'] = params['phone_number']
    @visitor_profile['site'] = @site
    @visitor_profile['message'] = params['message']
    @visitor_profile['contact_type'] = @lead_type

   #The response is sent
   @res = Net::HTTP.post_form(URI.parse("http://tools.seagamfg.com:4321/profiler/123/@piwik_cookie"), @visitor_profile)

   #This sends the response to the logger in /home/bclos/webapps/seaga-base/logs/{environment}.log
   logger.debug "Response:: #{@res.body}"

  end

end
