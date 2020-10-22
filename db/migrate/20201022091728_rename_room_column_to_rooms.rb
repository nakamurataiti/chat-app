class RenameRoomColumnToRooms < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :room, :name
  end
end
