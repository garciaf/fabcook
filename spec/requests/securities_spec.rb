require 'spec_helper'

describe "Securities" do
  describe "GET/ edit post" do 
    it "should redirect you to sign in if you go to secure area without beeing connected " do
      visit posts_path
      current_path.should eq(new_user_session_path)
    end
  end

  describe "POST/ sign in" do 
    it "should display success message when a user is authenticate" do
      user = FactoryGirl.create(:user)
      visit new_user_session_path
      fill_in 'user[email]', :with => user.email
      fill_in 'user[password]', :with => user.password
      click_on 'Sign in'
      current_path.should eq(root_path)
      page.should have_content("Signed in successfully.")
    end
  end
end