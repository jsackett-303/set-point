class Thermostat < ActiveRecord::Base
  belongs_to :location

  validates :location_id, presence: true
  validates :set_point, presence: true
  validates :serial_number, presence: true, uniqueness: true

  # requires the temp setting and an array of thermostats
  def self.demand_set_point(setting, tstats = [])
    return if setting.blank?
    tstats = all if tstats.blank?
    tstats.each do |t|
      t.update_attribute(:set_point, setting)
    end
  end

end
