class ApplicationController < ActionController::Base
  protect_from_forgery

  include CmsinoHelper

  before_filter :set_locale, :set_main_page

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_main_page
  end
end
