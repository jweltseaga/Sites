class Urlpool < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    oldUrl  :string, :unique
    timestamps
  end

  belongs_to :machine,  :accessible => true
  belongs_to :category, :accessible => true

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
