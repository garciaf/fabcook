module UsersMacros

  def login(user)
    visit new_user_session_path
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Sign in'
  end

  def set_locale(locale = 'en')
    I18n.locale = locale
  end
  
end