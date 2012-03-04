class AddEquityOfferedToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :equity_offered, :float
  end
end
