module ApplicationHelper

  def hasTerms
    
    @@context = Site.find_by_name(I18n.locale.to_s)
      
      if@@context.terms.empty?
        return false
      else
        return true
      end

  end

  def hasJobs
    
    @@context = Site.find_by_name(I18n.locale.to_s)
      
      if@@context.jobs.empty?
        return false
      else
        return true
      end

  end

  def hasPress

    @@context = Pressrelease.find(:all, :joins => :site, :conditions => {:sites => {:name => I18n.locale}})

     if@@context.empty?
        return false
      else
        return true
     end
  
  end

  def siteTitle

    @@context = Site.find_by_name(I18n.locale.to_s)
      
      if@@context.title.nil?
        return 'Seaga'
      else
        return @@context.title
      end
  
  end

end
