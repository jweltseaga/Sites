class Site < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
   title :string
   about :html
    jobs :html
   terms :html
    timestamps
  end
	
	has_many :categories, :order => :position
	children :categories, :pressreleases
  has_many :pressreleases
	

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
