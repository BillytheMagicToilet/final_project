class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :vote_type
      t.integer :user_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
