require "spec_helper"

describe UserMailer do
  it "send a mail when real user request for fogot password" do
    user = FactoryGirl.create :user
    visit new_user_password_path
    fill_in "user[email]", :with => user.email
    click_on "Send me reset password instructions"
    last_email.to.should include(user.email)
  end
end
