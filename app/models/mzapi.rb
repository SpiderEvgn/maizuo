class Mzapi < ActiveRecord::Base
  include HTTParty

  base_uri "http://open.maizuo.com"
  # base_uri "http://115.29.236.48"
  # default_params 
  format :json

  debug_output $stdout

  def self.getCinemas
    # 拉取城市和影院列表
    time = Time.new
    timestamp = time.strftime("%Y%m%d%H%M%S")
    sign_value = Digest::MD5.hexdigest("client_id=52642103681&timestamp=#{timestamp}&key=xkGEr244(((<HAee4346fg")
    response = get("/rest/ticket3.0/cinemas", query: { client_id: "52642103681", 
                                                       timestamp: "#{timestamp}", 
                                                       sign: "#{sign_value}",
                                                       cityId: "11"})
    response1 = response['data']['cinemas']
    # response2 = response.to_hash[:data][:cityList]
  end

  def self.getFilms
    # 拉取电影列表
    time = Time.new
    timestamp = time.strftime("%Y%m%d%H%M%S")
    sign_value = Digest::MD5.hexdigest("client_id=52642103681&timestamp=#{timestamp}&key=xkGEr244(((<HAee4346fg")
    get("/rest/ticket3.0/films", query: { client_id: "52642103681", 
                                          sign: "#{sign_value}", 
                                          timestamp: timestamp, 
                                          start: "0", 
                                          count: "10", 
                                          isShow: "1", 
                                          cityId: "0"}).inspect

  # get("/rest/ticket3.0/films").parsed_response
  # parsed_response={"result"=>"101", "msg"=>"account illegal"}
  end

  def self.getcinemaTickets
    time = Time.new
    timestamp = time.strftime("%Y%m%d%H%M%S")
    sign_value = Digest::MD5.hexdigest("client_id=52642103681&timestamp=#{timestamp}&key=xkGEr244(((<HAee4346fg")
    get("/rest/ticket3.0/cinemaTickets", query: { client_id: "52642103681", 
                                                  sign: "#{sign_value}",
                                                  timestamp: timestamp,
                                                  cinemaId: "152",
                                                  ticketId: "1556"}).inspect
  end
end
