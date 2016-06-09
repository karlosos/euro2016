class AddAccessToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :access, :boolean
  end
end
