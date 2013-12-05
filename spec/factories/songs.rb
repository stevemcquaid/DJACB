# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :song do
    title "MyString"
    artist "MyString"
    url "MyString"
    user_id 1
  end
end
