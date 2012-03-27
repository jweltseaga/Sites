class BrochureAssignment < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    timestamps
  end

  belongs_to :machine
  belongs_to :brochure
  acts_as_list :scope => :machine

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
