class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :pricing, foreign_key: true
      t.string :status
      t.datetime :booking_start
      t.datetime :booking_end
      t.integer :price
      t.integer :nb_persons

      t.timestamps
    end
  end
end
