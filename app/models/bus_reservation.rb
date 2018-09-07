class BusReservation < ApplicationRecord
  validates :name, :date, presence: true


  def self.to_csv
    CSV.generate do |csv|
      all.each do |reservation|
        csv << reservation.attributes.values_at(*['date', 'name'])
      end
    end
  end
end
