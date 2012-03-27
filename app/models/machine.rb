class Machine < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string, :required
    permalink   :string, :required
    description :html
    height      :integer
    width       :integer
    depth       :integer
    capacity    :string
    weight      :integer
    published   :boolean, :default => 'false'
    timestamps
  end

  # Paperclip
	has_attached_file :us_photo,
  :styles => {
    :thumbnail => "100x100>",
    :medium => "200x200>",
    :large  => "300x300>",
    :original => "600x600>"
  }, 
 :path => ":rails_root/public/assets/images/us/:style_:basename.:extension",
 :url  => "/assets/images/us/:style_:basename.:extension"

   # Paperclip
  has_attached_file :uk_photo,
  :styles => {
    :thumbnail => "100x100>",
    :medium => "200x200>",
    :large  => "300x300>",
    :original => "600x600>"
  }, 
 :path => ":rails_root/public/assets/images/uk/:style_:basename.:extension",
 :url  => "/assets/images/uk/:style_:basename.:extension"

   # Paperclip
  has_attached_file :in_photo,
  :styles => {
    :thumbnail => "100x100>",
    :medium => "200x200>",
    :large  => "300x300>",
    :original => "600x600>"
  }, 
 :path => ":rails_root/public/assets/images/in/:style_:basename.:extension",
 :url  => "/assets/images/in/:style_:basename.:extension"

	translates :name, :description
	
	has_many :categories, :through => :machine_assignments, :accessible => true
	has_many :machine_assignments, :dependent => :destroy

  has_many :urlpools, :accessible => true 
	
	has_many :features, :accessible => true
	
	has_many :manuals, :through => :manual_assignments, :accessible => true
	has_many :manual_assignments, :dependent => :destroy, :order => :position

  has_many :brochures, :through => :brochure_assignments, :accessible => true
  has_many :brochure_assignments, :dependent => :destroy, :order => :position
	
	children :features, :manual_assignments
	never_show :feature_translations

  def to_param
   permalink
  end

  def humanizedWeight
    if weight? && I18n.locale.to_s.eql?('us')
      weight.to_s+' lbs'
    elsif weight?
      (weight.to_f*0.45359237).round.to_s+' kgs'
    end
  end 
  
  def humanizedWidth
    if width? && I18n.locale.to_s.eql?('us')
      width.to_s+' in'
    elsif width?
      (width.to_f*2.54).round.to_s+' cm'
    end
  end 
  
 def humanizedDepth
    if width? && I18n.locale.to_s.eql?('us')
      width.to_s+' in'
    elsif width?
      (width.to_f*2.54).round.to_s+' cm'
    end
  end 

  def humanizedHeight
    if height? && I18n.locale.to_s.eql?('us')
      height.to_s+' in'
    elsif width?
      (height.to_f*2.54).round.to_s+' cm'
    end
  end 
      
  def preview
    if description?
			description.split.slice(0, 15).join(" ")+"..."
		else
			"..."
		end
  end

  def currentManual
    this.manuals.limit(1) 
  end

  def currentBrochure
    this.brochures.limit(1)
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
