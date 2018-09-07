class CreateBusReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_reservations do |t|
      t.datetime :date
      t.string :name
      t.timestamps
    end
  end
end
