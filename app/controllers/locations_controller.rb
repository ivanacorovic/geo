class LocationsController < ApplicationController

  class_attribute :request_geocoding_gatherer
  self.request_geocoding_gatherer = RequestGeocodingGatherer

  def index
    @locations = if search_value.present?
      Location.near(search_value)
    else
      Location.all
    end
  end

  # def near_query
  #   PostalCode.new(search_value).coordinates
  # end

  def search_value
    params[:search] && params[:search][:value]
  end

  def geocoded_request_information
    request_geocoding_gatherer.new(request)
  end
 
end