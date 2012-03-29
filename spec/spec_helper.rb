require 'bundler/setup'
require 'rspec'
require 'capybara'

require File.expand_path '../../app', __FILE__

module IntegrationGroup
  def self.included(base)
    base.metadata[:type] = :request
    base.metadata[:js] = true
  end
end

RSpec.configure do |config|
  config.include IntegrationGroup, :example_group => {
    :file_path => %r{spec/integration}
  }
end

# Note: this must be required after configuring IntegrationGroup
require 'capybara/rspec'
require 'capybara/webkit'

Capybara.javascript_driver = :webkit
Capybara.app = Sinatra::Application
