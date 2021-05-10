class ApplicationController < ActionController::Base
	before_action :set_locale

	def set_locale
		params_locale = %w(en de).include?(params[:locale].to_s) ? params[:locale].to_s : "en"
    cookie_locale = cookies[:locale].to_s if %w(en de).include?(cookies[:locale].to_s)
    
    set_locale_cookie(params_locale) if cookie_locale.blank? || params_locale != cookie_locale
    I18n.locale = params_locale
	end

  def set_locale_cookie(value)
    cookies[:locale] = {:value => value,
      :domain => :all,
      :expires => 1.year.from_now}
  end

  def default_url_options(options = {})
    options.merge!(locale: I18n.locale == :en ? nil : I18n.locale)
  end

end
