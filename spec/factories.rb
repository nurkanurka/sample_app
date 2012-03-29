FactoryGirl.define do
  factory :user do
    name 		  "Johan Torselius"
    email 		  "johan@torselius.se"
    password 		  "foobar"
    password_confirmation "foobar"
  end
end
