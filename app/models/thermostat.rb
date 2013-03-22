class Thermostat < ActiveRecord::Base
  belongs_to :location

  validates :location_id, presence: true
  validates :set_point, presence: true
  validates :serial_number, presence: true, uniqueness: true
end
