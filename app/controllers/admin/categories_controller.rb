class Admin::CategoriesController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index
	auto_actions_for :site, :create
	#auto_actions :write_only,:edit,:index


	def show
		hobo_show Category.find_by_permalik_and_site(params[:id], params[:site_id])
	end
	
	def edit
		hobo_show Category.find_by_permalink(params[:id])
	end

	def update
		hobo_update Category.find_by_permalink(params[:id])
	end
	
	def destroy
		hobo_destroy Category.find_by_permalink(params[:id])
	end


end
