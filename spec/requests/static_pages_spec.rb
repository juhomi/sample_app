require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
  	 it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Sample App")
    end
 
 	   it "should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Home")
	   end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end
  	
end
