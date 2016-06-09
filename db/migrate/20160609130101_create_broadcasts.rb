class CreateBroadcasts < ActiveRecord::Migration
  def change
    create_table :broadcasts do |t|
      t.belongs_to :channel, index: true
      t.belongs_to :match, index: true
      t.timestamps
    end
  end
end
