class ApplicationController < ActionController::Base
  before_action :fetch_categories
  before_action :authenticate_user!


  def after_sign_in_path_for(_resource_or_scope)
    admin_dashboard_path
  end
  
  def fetch_categories
    @categories = Category.all
    @articles = Article.all
  end
end
