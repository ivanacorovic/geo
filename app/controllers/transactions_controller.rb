class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
    @geojson = Array.new

    @transactions.each do |transaction|
      @geojson << {
        type: 'Feature',
        
        properties: {
          geometry: {
            type: 'Point',
            coordinates: [transaction.company.latitude, transaction.company.longitude]
          },
          name: transaction.name,
          :'marker-color' => '#00607d',
          :'marker-symbol' => 'circle',
          :'marker-size' => 'medium'
        }
    }
    end
    respond_to do |format|
      format.html
      format.json { render json: @geojson }  # respond with the created JSON object
    end

  end

end