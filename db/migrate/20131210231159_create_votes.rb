class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :type
      t.integer :user
      t.integer :issue

      t.timestamps
    end
  end
end
