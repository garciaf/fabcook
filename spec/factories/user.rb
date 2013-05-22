FactoryGirl.define do
  factory :user do 
    email "foo@example.com"
    password "secret_password"
    is_admin true
  end
end