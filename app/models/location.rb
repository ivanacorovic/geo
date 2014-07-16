class Location < ActiveRecord::Base
  # validates :store_number, uniqueness: true
  # geocoded_by :country_code
  # after_validation :geocode_by_postal_code, if: :postal_code?
  geocoded_by :address
  after_validation :geocode

  #private
  
  # def geocode_by_postal_code
  #   self
  # end
  
  def address
    [street_line_1, street_line_2, city, state,
    postal_code, country_code].compact.join ', '
  end 
  
  
end
