class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    orders_path(resource)
  end
end
