FactoryGirl.define do
  factory :song do
    name        {Faker::Lorem.sentence(40)}
    artist_id   { build(:artist)}
  end
end
