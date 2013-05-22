require 'spec_helper'

describe "Blogs" do
  describe "GET /blogs" do
    it "display the main page in english" do
      visit root_path
      page.should have_content("Anyone can cook")
    end

    it "should display the french version" do 
      visit home_path(locale: 'fr')
      page.should have_content("Tout le monde peut cuisiner")
    end
  end
end
