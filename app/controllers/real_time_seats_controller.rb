class RealTimeSeatsController < ApplicationController
  def index
  	@realTimeSeats = RealTimeSeat.getRealTimeSeats(1435217923)
  end
end
