# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # See https://stackoverflow.com/questions/35045076/creating-a-global-variable-to-all-the-controllers-in-rails
  before_filter :set_variables

  def set_variables
    @app_name = Configuration.app_name 
    @app_version = Configuration.app_version #{}"application_controller.changeme.42"
    @app_git_version = Configuration.git_version # '12fea53'
    @app_commit_repo = Configuration.app_commit_repo
    @rails_env = RAILS_ENV
  end
  #require MySite::Application

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

end
