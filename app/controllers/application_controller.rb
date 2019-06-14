class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_resource_or_scope)
    admin_dashboard_path
  end
end
