class Admin::ManualAssignmentsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => [:index, :show, :edit]
	auto_actions_for :machine, :create
end
