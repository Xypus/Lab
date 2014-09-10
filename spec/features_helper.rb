require 'spec_helper'
require 'capybara/rspec'
require 'capybara/rails'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end