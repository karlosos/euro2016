class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :score_a
      t.integer :score_b
      t.belongs_to :match, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
