class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :user, foreign: true
      t.references :room, foreign: true
      t.timestamps
    end
  end
end
