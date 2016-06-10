class AddPredictedResultToPredictions < ActiveRecord::Migration
  def change
    add_column :predictions, :predicted_result, :integer
  end
end
