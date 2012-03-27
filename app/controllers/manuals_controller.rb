class ManualsController < ApplicationController

  hobo_model_controller

  auto_actions :show, :index

  #def index
	#hobo_index :paginate => false
  #end

end
