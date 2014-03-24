require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_page" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_path
      response.status.should be(200)
    end
  end
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_page/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the right title" do
      visit '/static_page/home'
      expect(page).to have_title("Home")
    end
  end
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_page/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit '/static_page/help'
      expect(page).to have_title("Help")
    end
  end
  describe "About Page" do
    it "should have the content 'About'" do
      visit '/static_page/about'
      expect(page).to have_content('About')
    end
    it "should have the right title" do
      visit '/static_page/about'
      expect(page).to have_title("About")
    end
  end
end
