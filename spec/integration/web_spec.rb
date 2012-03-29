require 'spec_helper'

describe 'Web integration' do
  it "loads the page" do
    visit '/'
    page.should have_content('hello world')

    click_on 'click me'
    page.should have_content('ajax response')
  end
end