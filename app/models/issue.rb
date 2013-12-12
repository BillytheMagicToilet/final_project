class Issue < ActiveRecord::Base
	belongs_to :user
	has_many :votes
        def owner_name
            u = User.find(user_id)
            "#{u.first_name} #{u.last_name}"
        end
end
