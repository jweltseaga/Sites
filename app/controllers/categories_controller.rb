class CategoriesController < ApplicationController

  hobo_model_controller

  auto_actions :show, :index
	auto_actions_for :site, :create

	#def index
#		@category = Category.find_by_permalink(params[:id])
#		hobo_index Category.join(:sites).where("sites.name = &{I18n.locale}")
#	end

	def show
		@site = Site.find_by_name(I18n.locale.to_s)
		hobo_show Category.find_by_permalink_and_site_id(params[:id], @site.id)
	end


end
