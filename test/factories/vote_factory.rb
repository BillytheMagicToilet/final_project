FactoryGirl.define do
  factory :vote do
    type {["up_vote", "down_vote"].sample}

    association :user, factory: :user
  end
end