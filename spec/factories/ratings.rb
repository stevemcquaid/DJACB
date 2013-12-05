# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rating do
    rating 1
    song_id 1
    user_id 1
  end
end
