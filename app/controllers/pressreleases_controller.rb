class PressreleasesController < ApplicationController

  hobo_model_controller

  auto_actions :show, :index
  auto_actions_for :site, :create
 
  def show
    hobo_show Pressrelease.find_by_permalink(params[:id])
  end

  def index
    @pressreleases = Pressrelease.find(:all, :joins => :site, :conditions => {:sites => {:name => I18n.locale}}, :order => "created_at desc")
  end
end
