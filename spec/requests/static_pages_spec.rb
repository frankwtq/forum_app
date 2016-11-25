require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "should have the content 'Sample Forum'" do
	    visit '/static_pages/home'
	    expect(page).to have_content('Sample Forum')
    end
    it "should have the title 'Home'" do 
	    visit '/static_pages/home'
	    expect(page).to have_title("Sample Forum | Home")
    end
  end
  describe "Help page" do

    it "should have the content 'Help'" do
	    visit '/static_pages/help'
	    expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
	    visit '/static_pages/help'
	    expect(page).to have_title("Sample Forum | Help")
    end
  end
  
end
