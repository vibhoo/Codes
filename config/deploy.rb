require 'capistrano/ext/multistage'

set :stages, ["staging","production"]
set :default_stage, "staging"

set :application, "Vbihoo"


set :scm, :git
set :repository, "git@github.com:vibhoo/try_git.git"
set :scm_passphrase,""

set :user,"root"

role :web, "your web-server here"                          # Your HTTP server, Apache/etc
role :app, "your app-server here"                          # This may be the same as your `Web` server
role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
role :db,  "your slave db-server here"

