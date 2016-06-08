class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date, :null => false, :default => Time.now
      t.integer :team_a_id
      t.integer :team_b_id
      t.integer :score_a
      t.integer :score_b
      t.timestamps
    end
  end
end
