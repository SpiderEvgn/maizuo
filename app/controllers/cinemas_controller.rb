class CinemasController < ApplicationController
  # before_action :getCinemaInfo

  def index
    @cinemas = Cinema.all.paginate(:page => params[:page], :per_page => 5)
  end



  private 
    def getCinemaInfo
      @cinemas = Cinema.getCinemas
      @cinemas.each do |cinema|
        c = Cinema.new
        c.cityId = cinema['cityId']
        c.cityName = cinema['cityName']
        c.cinemaId = cinema['cinemaId']
        c.cinemaName = cinema['cinemaName']
        c.logo = cinema['logo']
        c.address = cinema['address']
        c.region = cinema['region']
        c.phone = cinema['phone']
        c.hallId = cinema['hallId']
        c.hallNames = cinema['hallNames']
        c.seatCounts = cinema['seatCounts']
        c.vipflags = cinema['vipflags']
        c.ticketFlag = cinema['ticketFlag']
        c.seatFlag = cinema['seatFlag']
        c.busPath = cinema['busPath']
        c.subway = cinema['subway']
        c.businessCircle = cinema['businessCircle']
        c.longitude = cinema['longitude']
        c.latitude = cinema['latitude']
        c.save
        # c.update!(cinema_params)
      end
    end
    
    def cinema_params
      params.require(:cinema).permit(:cityId, :cityName, :cinemaId, :cinemaName,
                                     :logo, :address, :region, :phone, :hallId,
                                     :hallNames, :seatCounts, :vipflags, :ticketFlag,
                                     :seatFlag, :busPath, :subway, :businessCircle,
                                     :longitude, :latitude)
    end
end
