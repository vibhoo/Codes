
set :application, "Vbihoo"
set :scm, :git
set :repository, "git@github.com:vibhoo/Codes.git"
set :scm_passphrase,""
set :user,"root"

require 'capistrano/ext/multistage'
set :stages, ["staging","production"]
set :default_stage, "staging"