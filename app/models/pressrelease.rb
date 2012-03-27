class Pressrelease < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name           :string, :required
    permalink      :string, :required
    teaser         :string
    content        :html
    publishedState :boolean
    timestamps
  end

  belongs_to :site

  def to_param
   permalink
  end

  def preview
      if teaser?
        teaser
      else
        content.split.slice(0, 20).join(" ")+"..."
      end
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
