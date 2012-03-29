# Integration Testing Setup

This is an example of how to setup headless integration tests for a rack app
with rspec, capybara, and capybara-webkit.

### Rake Tasks

* `spec:integration` only runs specs in the `spec/integration` with capybara dsl
* `spec` runs all other non-integration specs

### Defining Integration Specs

To define a new integration spec, add a spec file to the `spec/integration` folder.
These specs will automatically be tagged with `:type => :request` and `:js => true`,
and have the Capybara DSL and matchers included.

To see how this is done, check out `spec/spec_helper.rb`