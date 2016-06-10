class AddGoodResultToPredictions < ActiveRecord::Migration
  def change
    add_column :predictions, :is_good_result, :boolean, index: true
    add_column :predictions, :is_exact_score, :boolean, index: true
  end
end
