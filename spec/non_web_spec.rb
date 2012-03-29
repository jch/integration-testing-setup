require 'spec_helper'

describe 'Non web spec' do
  it 'should not have capybara dsl' do
    expect {
      visit '/'
    }.to raise_error
  end
end