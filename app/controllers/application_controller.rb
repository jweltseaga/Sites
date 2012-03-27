class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :set_locale
 


protected 
  def set_locale
    I18n.locale = extract_locale_from_url || I18n.default_locale
  end


protected
  def extract_locale_from_url
    if request.host.include? "seaga.co.uk"
     return parsed_locale = "uk"
      logger.info "|================|  Parsed Locale = #{parsed_locale} |=====================|"
    elsif request.host.include? "seagaindia"
     return parsed_locale = "in"
      logger.info "|================|  Parsed Locale = #{parsed_locale} |=====================|"
    else
     return parsed_locale = "us"
      logger.info "|================|  Parsed Locale = #{parsed_locale} |=====================|"
    end
    I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale  : nil
  end

 

end
