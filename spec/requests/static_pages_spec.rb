require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "shouldn't have the content 'Home'" do
      visit root_path
      expect(page).to have_content('Ruby On Flowers')
      expect(page).not_to have_title('| Home')
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
      expect(page).to have_title('| Help')
    end
  end
  
  describe "About page" do
    it "should have the content 'About us'" do
      visit about_path
      expect(page).to have_content('About us')
      expect(page).to have_title('| About')
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_title('| Contact')
    end
  end
  
end
