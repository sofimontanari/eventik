class AddFeedbackToEstimations < ActiveRecord::Migration[7.0]
  def change
    add_column :estimations, :feedback, :text
  end
end
