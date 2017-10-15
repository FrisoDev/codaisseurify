FactoryGirl.define do
  factory :artist do
    name        {Faker::Lorem.sentence(40)}
    country     {Faker::Lorem.sentence(30)}
    act_since   {Faker::Lorem.sentence(30)}
    bio         {Faker::Lorem.sentence(30)}
    genre       {Faker::Lorem.sentence(10)}
  end
end
