class AddStadiumToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :stadium, :string
  end
end
