class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :investor_id
      t.integer :business_id
      t.integer :amount

      t.timestamps
    end
  end
end
