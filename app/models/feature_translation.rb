class FeatureTranslation < ActiveRecord::Base

  hobo_model # Don't put anything above this
	
  fields do
		locale			:string
    name        :text
    timestamps
  end
	
	belongs_to :feature
	def viewable_by?(user, field)
		true
	end 
  # --- Permissions --- #

  def create_permitted?
    true
  end

  def update_permitted?
    true
  end

  def destroy_permitted?
    true
  end

  def view_permitted?(field)
    true
  end
	


end
