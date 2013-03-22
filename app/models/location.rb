class Location < ActiveRecord::Base
  has_many :thermostats

  validates :address, presence: true, uniqueness: true
end
