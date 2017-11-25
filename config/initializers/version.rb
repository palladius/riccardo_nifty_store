
# preso da: https://stackoverflow.com/questions/11199553/where-to-define-rails-apps-version-number

# idea 1
module MySite
  class Application
    VERSION = "0.0.4-todo-take-from-root"
    #require File.expand_path('../../VERSION', __FILE__)
  end
end

# idea 2
class Configuration
  class << self
    attr_accessor :app_version, :app_name, :app_description, :git_version, :app_commit_repo
  end
  @app_version = 0.72
  @git_version = `git show --pretty=%H`[0..39]
  @app_name = 'NiftyStoreTemplate'
  @app_repo_url = 'https://github.com/palladius/riccardo_nifty_store'
  @app_description = 'Nifty Store (goldie RoR app by Ricc)'
  @app_commit_repo = "#{ @app_repo_url }/commit/#{ @git_version }"
end