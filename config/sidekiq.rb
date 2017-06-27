$: << File.expand_path('../../lib', __FILE__)

require 'rubygems'
require 'bundler/setup'
Bundler.require :default

require 'database'
Checker::Database.connect

require 'sidekiq'
require 'build_worker'
require 'config_worker'
