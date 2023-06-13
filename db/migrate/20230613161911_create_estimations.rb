class CreateEstimations < ActiveRecord::Migration[7.0]
  def change
    create_table :estimations do |t|
      t.float :price
      t.date :delivery_date
      t.string :status
      t.text :comments
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
