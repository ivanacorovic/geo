class Company < ActiveRecord::Base
   has_many :transactions
   
  class_attribute :geocoding_service
  self.geocoding_service = Geocoder

  geocoded_by :address
 
  after_create :set_coordinates

  def set_coordinates
    self.latitude, self.longitude = geocoding_service.coordinates(address)
    self.save
  end

  def has_coordinates?
    not(latitude.blank? || longitude.blank?)
  end

end
