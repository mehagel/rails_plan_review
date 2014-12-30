# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'rake'
require 'rspec/core/rake_task' 


require File.expand_path('../config/application', __FILE__)

RailsPlans::Application.load_tasks

namespace :scrape do

  task :get_agencies do
    require APP_ROOT.join('db', 'scraper.rb')
    scraper = MyScraper.new
    scraper.scrape_agencies
  end

  task :get_projects do
    require APP_ROOT.join('db', 'scraper.rb')
    project_scraper = MyProjectScraper.new
    project_scraper.get_projects
  end

end