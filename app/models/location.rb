class Location < ActiveRecord::Base
  has_many :thermostats
  validates :address, presence: true, uniqueness: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  acts_as_gmappable
  def gmaps4rails_address
    "#{self.address}"
  end

  def gmaps
    true
  end

end
