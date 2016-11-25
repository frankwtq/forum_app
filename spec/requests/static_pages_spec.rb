require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample Forum'" do
	    visit '/static_pages/home'
	    expect(page).to have_content('Sample Forum')
    end
  end
end
