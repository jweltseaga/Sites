class Admin::CategoriesController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index
	auto_actions_for :site, :create
	#auto_actions :write_only,:edit,:index


	def show
		@site = Site.find_by_name(I18n.locale.to_s)
		hobo_show Category.find_by_permalink_and_site_id(params[:id], @site.id)
	end
	
	def edit
		@site = Site.find_by_name(I18n.locale.to_s)
		hobo_show Category.find_by_permalink_and_site_id(params[:id], @site.id)
	end

	def update
		@site = Site.find_by_name(I18n.locale.to_s)
		hobo_update Category.find_by_permalink_and_site_id(params[:id], @site.id)
	end
	
	def destroy
		@site = Site.find_by_name(I18n.locale.to_s)
		hobo_destroy Category.find_by_permalink_and_site_id(params[:id], @site.id)
	end


end
