FactoryGirl.define do
  
  factory :user do 
    email "foo@example.com"
    password "secret_password"
    is_admin false

    factory :admin do 
      email "admin@example.com"
      is_admin true
    end
  end
end