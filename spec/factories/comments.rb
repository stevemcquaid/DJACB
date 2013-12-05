# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    comment "MyText"
    song_id 1
    user_id 1
  end
end
