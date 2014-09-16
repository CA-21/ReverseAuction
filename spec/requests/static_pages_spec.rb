require 'spec_helper'

describe "static pages" do

  describe "home page" do

    it 'should have the content Ask Question' do
      visit root_path
      expect(page).to have_content('Ask Question')
    end


  end
end