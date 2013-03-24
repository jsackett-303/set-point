class Thermostat < ActiveRecord::Base
  belongs_to :location

  acts_as_gmappable
  delegate :address, :latitude, :longitude, :gmaps4rails_address, :to => :location

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

  def gmaps4rails_title
    "Set Point #{self.set_point}"
  end

  def gmaps4rails_infowindow
    "<h5>Thermostat</h5><p>S/N #{self.serial_number}<br/>Set Point #{self.set_point}</p>"
  end

  def gmaps
    true
  end

end
