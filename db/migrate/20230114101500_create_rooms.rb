class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string      :room_name,               null: false
      t.integer     :room_saiz,               null: false
      t.integer     :max_people_available,    null: false
      t.references  :hotel,                   null: false, foreign_key: true
      t.timestamps
    end
  end
end
