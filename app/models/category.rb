class Category < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string, :required
		description	:text
    permalink   :string, :required
    published   :boolean, :default => 'false'
    timestamps
  end
	
  #Paperclip
  has_attached_file :photo,
  :styles => {
    :thumbnail => "100x100>",
    :medium => "200x200>",
    :large  => "300x300>",
    :original => "600x600>"
  }, 
 :path => ":rails_root/public/assets/images/categories/:style_:basename.:extension",
 :url  => "/assets/images/categories/:style_:basename.:extension"
	
  belongs_to :site
	acts_as_list :scope => :site 
	has_many :machines, :through => :machine_assignments, :accessible => true
	has_many :machine_assignments, :dependent => :destroy, :order => :position
	children :machine_assignments
	
  has_many :urlpools, :accessible => true 
  

  def to_param
   permalink
  end

  def localize
    self.join(:site).where("sites.name = {I18n.locale}")
  end

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
