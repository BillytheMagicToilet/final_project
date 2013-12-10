class AddPassToUser < ActiveRecord::Migration
  def change
  	add_column :users, :password, :string
  	add_column :users, :last_login, :datetime
  end
end
