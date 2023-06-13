class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :address
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :event_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
