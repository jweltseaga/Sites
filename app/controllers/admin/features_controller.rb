class Admin::FeaturesController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => [:index, :show, :edit]

end
