FactoryGirl.define do
  factory :song do
    name        {Faker::Lorem.sentence(40)}
    artist      {build(:artist)}
  end
end
