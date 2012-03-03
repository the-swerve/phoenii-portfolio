class ReplaceInvestorsAndEntrepeneursWithUsers < ActiveRecord::Migration
  def up
    drop_table :investors
    drop_table :entrepeneurs
    rename_column :investments, :investor_id, :user_id
  end

  def down
    # blech
  end
end
