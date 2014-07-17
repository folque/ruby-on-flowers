require 'spec_helper'

describe "Static pages" do
  
#  describe "Home page" do
#    before {visit root_path}
#    subject {page}
#    it {should have_content('RubyOnFlowers')}
#    it {should_not have_content(' | Home')}
#    end
  
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
