class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :status
      t.string :reason
      t.integer :capacity

      t.timestamps
    end
  end
end
