class MaizuoapisController < ApplicationController

  def index
  	@cinemas = Mzapi.getCinemas
  	@films = Mzapi.getFilms
  	@cinematickets = Mzapi.getcinemaTickets
  	
  end
end
