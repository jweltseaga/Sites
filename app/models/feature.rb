class Feature < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :text
    timestamps
  end
	
	translates :name
	
	belongs_to :machine
	has_many :feature_translations, :accessible => true
	never_show :feature_translations
	never_show :translations

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
