require 'spec_helper'

describe "Securities" do
  describe "GET/ edit post" do 
    it "should redirect you to sign in if you go to secure area without beeing connected " do
      visit posts_path
      current_path.should eq(new_user_session_path)
    end
  end

  describe "POST/ sign in" do 
    it "should display success message when a admin is authenticate" do
      admin = FactoryGirl.create(:admin)
      visit new_user_session_path
      fill_in 'user[email]', :with => admin.email
      fill_in 'user[password]', :with => admin.password
      click_on 'Sign in'
      current_path.should eq(root_path)
      page.should have_content("Signed in successfully.")
    end
    
    it "should be able able go to new post view when admin is logged in " do
      admin = FactoryGirl.create(:admin)
      login admin 
      visit new_post_path
      current_path.should eq(new_post_path)
    end

    it "should not be possible for a regular user to access admin zone" do
      user = FactoryGirl.create :user
      login user
      visit new_post_path
      current_path.should_not eq(new_post_path)
      visit posts_path
      current_path.should_not eq(posts_path)
    end


  end
end