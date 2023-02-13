class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|

      t.date        :first_day,             null: false
      t.date        :last_day,              null: false
      t.integer     :number_of_night,       null: false
      t.integer     :guest_id,              null: false
      t.integer     :booking_price,         null: false
      t.references  :plan,                  null: false, foreign_key: true
      t.references  :user,                  null: false, foreign_key: true
      t.timestamps
    end
  end
end
