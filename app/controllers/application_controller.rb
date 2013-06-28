class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include FlashHelper
  include AuthHelper

  helper_method :current_user, :signed_in?, :signed_as_admin?
end
