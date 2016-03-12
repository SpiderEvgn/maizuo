class MaizuoapisController < ApplicationController
  def index
  	@cinemas = Mzapi.getcinemas
  end
end
