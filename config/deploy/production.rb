# use rbenv
set :default_environment, {
  'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH",
}

set :stage, :production

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
set :unicorn_env, fetch(:production)
role :app, "192.168.33.10"
role :web, "192.168.33.10"
role :db,  "192.168.33.10"

set :deploy_to, "/home/vagrant/rails"
set :rails_env, "production"
set :branch, "master"
set :user, "vagrant"
set :rails_env, :production

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
# server 'example.com', roles: %w{web app}, my_property: :my_value
namespace :deploy do
  after 'deploy:restart', 'unicorn:reload' # app IS NOT preloaded
  after 'deploy:restart', 'unicorn:restart'  # app preloaded
end