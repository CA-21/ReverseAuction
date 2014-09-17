require 'spec_helper'

describe "static pages" do

  describe "home page" do
    it 'should have the content Ask Question' do
      visit root_path
      expect(page).to have_content('Ask Question')
    end
  end

  describe 'contact page' do
    it 'should have the content Contact' do
      visit contact_path
      expect(page).to have_content('Contact')
    end
  end

  describe 'about page' do
    it 'should have the content About' do
      visit about_path
      expect(page).to have_content('About')
    end
  end
end