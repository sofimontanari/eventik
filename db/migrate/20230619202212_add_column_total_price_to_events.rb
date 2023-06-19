class AddColumnTotalPriceToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :total_price, :float, default: 0
  end
end
