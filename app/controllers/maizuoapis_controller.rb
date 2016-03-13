class MaizuoapisController < ApplicationController
  def index
  	@cinemas = Mzapi.getcinemas
  	@films = Mzapi.getfilms
  end
end
