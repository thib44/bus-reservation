class CreateBusReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_reservations do |t|
      t.date :date
      t.string :hour
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :start_location
      t.string :end_location
      t.timestamps
    end
  end
end
