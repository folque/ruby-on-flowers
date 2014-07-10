require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'Ruby On Flowers'" do
      visit '/static_pages/home'
      expect(page).to have_content('Ruby On Flowers')
      expect(page).to have_title('lala | Flowers')
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_title('lala | Help')
    end
  end
  
  describe "About page" do
    it "should have the content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About us')
      expect(page).to have_title('lala | About')
    end
  end
  
end
