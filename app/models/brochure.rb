class Brochure < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name                 :string
    external_description :string
    internal_description :string
    file_name            :string
    timestamps
  end
  
  # Paperclip
  has_attached_file :pdf, 
   :path => ":rails_root/public/assets/brochures/:basename.:extension",
   :url  => "/assets/brochures/:basename.:extension"


  translates :name, :external_description, :internal_description
  
  has_many :machines, :through => :brochure_assignments, :accessible => true
  has_many :brochure_assignments, :dependent => :destroy
  never_show :translations
  children :machines
  

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
