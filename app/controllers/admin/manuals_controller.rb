class Admin::ManualsController < ApplicationController

  hobo_model_controller

  auto_actions :all
	
	def create
		hobo_create do
			if request.xhr?
				self.this = MachineAssignment.new
			end
		end
	end 

end
