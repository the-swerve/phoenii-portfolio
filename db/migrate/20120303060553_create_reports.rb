class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :business_id
      t.string :content

      t.timestamps
    end
  end
end
