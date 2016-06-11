class AddScoresToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :score_a, :integer
    add_column :logs, :score_b, :integer
  end
end
