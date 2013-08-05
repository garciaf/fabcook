require 'capistrano-unicorn'

default_run_options[:pty] = true 
set :application, "fabcook"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :repository, "git@github.com:garciaf/fabcook.git"
set :scm_passphrase, "vagrant"

set :ssh_options, { :forward_agent => true }

role :web, "192.168.33.10"                          # Your HTTP server, Apache/etc
role :app, "192.168.33.10"                          # This may be the same as your `Web` server
role :db,  "192.168.33.10", :primary => true # This is where Rails migrations will run
# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"
set :deploy_to, "/home/vagrant/rails/"
set :rails_env, "production"
set :branch, "master"
set :user, "vagrant"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end