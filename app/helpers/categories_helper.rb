module CategoriesHelper

  def findPublishedCategories
    
   return @PublishedCategories = Category.find(:all, :joins => :site, :conditions => {:sites => {:name => I18n.locale}, :published => true})
    
  end

end
