class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :date
    add_column :users, :user_name, :string
    add_column :users, :supplier, :boolean, default: false
    add_column :users, :business_name, :string
    add_column :users, :address, :string
    add_column :users, :rut, :string
    add_column :users, :description, :text
    add_column :users, :service_type, :string
    add_column :users, :capacity, :integer, null: true
    add_column :users, :duration, :string
    add_column :users, :includes, :text
    add_column :users, :benefits, :text
    add_column :users, :notes, :text
  end
end
