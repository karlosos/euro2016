class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.belongs_to :prediction, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
