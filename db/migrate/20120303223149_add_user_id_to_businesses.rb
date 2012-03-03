class AddUserIdToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :user_id, :integer
  end
end
