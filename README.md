# Integration Testing Setup

This is an example of how to setup headless integration tests for a rack app
with rspec, capybara, and capybara-webkit.

### Rakefile

Defines a `spec:integration` task that only runs specs in the `spec/integration`
folder.

### spec/spec_helper.rb

Custom filtering on rspec example groups to include capybara dsl on all specs in
`spec/integration` without manually adding filters