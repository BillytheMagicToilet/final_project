# This will guess the User class
FactoryGirl.define do
  factory :issue do
    title {Faker::Lorem.words(5)}
    description {Faker::Lorem.paragraphs}
    goal {Faker::Lorem.sentence}

    # user_with_posts will create post data after the user has been created
    factory :issue_with_votes do
      # posts_count is declared as an ignored attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      ignore do
        posts_count 10
      end

      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including ignored
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |user, evaluator|
        create_list(:vote, evaluator.posts_count, user: user)
      end
    end

  end
end