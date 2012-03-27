class LeadMailer < ActionMailer::Base
  default :from => "bclos@seagamfg.com"
  
  def notify(recipient, formData, cookies)
    @recipient, @formData, @cookies = recipient, formData, cookies
    
    
    mail(:to => @recipient,
         #:cc => ["jwelt@seagamfg.com"]
         )
  end

end
