# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
RailsPlans::Application.initialize!

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# Require gems we care about
require 'rubygems'

require 'uri'
require 'pathname'

require 'pg'
require 'active_record'
require 'logger'

# require 'sinatra'
# require "sinatra/reloader" if development?

require 'erb'
require 'nokogiri'
require "open-uri"

# 
# APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_ROOT = File.dirname File.expand_path(__FILE__ + "/..")

# APP_NAME = APP_ROOT.basename.to_s

# Set up the controllers and helpers
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }

# Set up the database and models
# require APP_ROOT.join('config', 'database')