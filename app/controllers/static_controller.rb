class StaticController < ApplicationController

hobo_model_controller

  auto_actions :none
 
 def about 
  @site = Site.find(:first,
                    :select => "about",
                    :conditions => ["name = ?", I18n.locale])
 end

  def terms 
  @site = Site.find(:first,
                    :select => "terms",
                    :conditions => ["name = ?", I18n.locale])
 end

  def opportunity 
  @site = Site.find(:first,
                    :select => "jobs",
                    :conditions => ["name = ?", I18n.locale])
 end

end