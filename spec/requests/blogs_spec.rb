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
  describe "failure" do 
    it "will fail" do 
      expect(false).to eq(true)
    end
  end
  describe "Search /blog" do
    it "should be able to search into the blog database" do
      set_locale "en"
      post = FactoryGirl.create(:post)
      post2 = FactoryGirl.create(:post, title: 'not so top article' )      
      
      visit home_path(locale: 'en')
      fill_in 'search', :with => 'article top'
      click_on 'Search'
      page.should have_content("article top")
    end
    it "should return no result if the request is wrong" do 
      set_locale "en"
      post = FactoryGirl.create(:post)
      post2 = FactoryGirl.create(:post, title: 'not so top article' )      
      
      visit home_path(locale: 'en')
      search_query = 'wrong search'
      fill_in 'search', :with => search_query
      click_on 'Search'
      page.should have_content(search_query)
      page.should have_content(I18n.t "search.no_result")
    end
  end
end
