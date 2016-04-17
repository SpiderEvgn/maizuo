class ForetellsController < ApplicationController
  def index
  	@foretells = Foretell.getForetells(2474)
  end
end
