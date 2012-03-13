require 'spec_helper'

describe "StaticPages" do
  #describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #    get static_pages_index_path
  #    response.status.should be(200)
  #  end
  #end
  
  describe "Home page" do
  	it "should have the h1 'The Horses Mouth | Home' " do
  		visit root_path
  		page.should have_selector('h1', :text => "The Horses Mouth")
  	end
  	
  	it "should have the base title" do
      visit root_path
      page.should have_selector('title',
                        :text => "The Horses Mouth")
    end
    
    it "should not have a custom page title" do
    	visit root_path
    	page.should_not have_selector('title', :text => '| Home' )
    end
  end
  
  describe "About page" do
  	it "should have the h1 'About' " do
  		visit about_path
  		page.should have_selector('h1', :text => 'About')
  	end
  	
  	it "should have the title 'About'" do
      visit about_path
      page.should have_selector('title',
                        :text => "The Horses Mouth | About")
    end
  end
  
  describe "Contact page" do
  	it "should have the h1 'Contact' " do
  		visit contact_path
  		page.should have_selector('h1', :text => 'Contact')
  	end
  	
  	it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                        :text => "The Horses Mouth | Contact")
    end
  end
  
  describe "Help page" do
  	it "should have the h1 'Help' " do
  		visit help_path
  		page.should have_selector('h1', :text => 'Help')
  	end
  	
  	it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        :text => "The Horses Mouth | Help")
    end
  end
end
