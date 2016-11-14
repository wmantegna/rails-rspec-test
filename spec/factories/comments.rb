FactoryGirl.define do
  factory :comment do
    trait :has_text do
      text 'hello world'
    end

    trait :no_text do
      text ''
    end

    trait :tomorrow do
      date { 1.day.from_now }
    end

    trait :today do
      date { Date.today }
    end

    trait :yesterday do
      date { 1.day.ago }
    end

  end
end