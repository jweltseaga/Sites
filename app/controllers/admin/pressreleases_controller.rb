class Admin::PressreleasesController < ApplicationController

  hobo_model_controller

  auto_actions :all
  auto_actions_for :site, :create

  def show
    hobo_show Pressrelease.find_by_permalink(params[:id])
  end
  
  def edit
    hobo_show Pressrelease.find_by_permalink(params[:id])
  end

  def update
    hobo_update Pressrelease.find_by_permalink(params[:id])
  end
  
  def destroy
    hobo_destroy Pressrelease.find_by_permalink(params[:id])
  end
end
