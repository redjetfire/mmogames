require 'factory_girl_rails'

FactoryGirl.define do

  sequence :email do |n|
    "person#{n}@example.com"
  end

  sequence :name do |m|
    "person#{m}"
  end

  factory :user do |user|
   user.email FactoryGirl.generate :email
   user.password "100500"
   user.password_confirmation "100500"
  end

  factory :server do |server|
   server.name "Bug Realm"
   server.association(:category)
  end

  factory :category do |c|
    c.name FactoryGirl.generate :name
  end

  factory :server_with_followers, :parent => :server do |f|
    f.users {|u| [u.association(:user)]}
  end
  
end
