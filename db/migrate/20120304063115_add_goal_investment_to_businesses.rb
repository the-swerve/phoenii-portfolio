class AddGoalInvestmentToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :goal_investment, :float
    add_column :businesses, :invested_amount, :float
  end
end
