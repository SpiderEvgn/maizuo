class Mzapi < ActiveRecord::Base
  include HTTParty

  base_uri "http://open.maizuo.com"
  # 测试地址需要改变地址 /etc/hosts:  115.29.236.48  open.maizuo.com

  # default_params  暂且没有默认参数，注释掉以备将来之用
  format :json
  
  # debug_output 用来在 console 输出 api 调用过程
  debug_output $stdout

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
                                          cityId: "0"})
  end

  # def self.getcinemaTickets
  #   time = Time.new
  #   timestamp = time.strftime("%Y%m%d%H%M%S")
  #   sign_value = Digest::MD5.hexdigest("client_id=52642103681&timestamp=#{timestamp}&key=xkGEr244(((<HAee4346fg")
  #   get("/rest/ticket3.0/cinemaTickets", query: { client_id: "52642103681", 
  #                                                 sign: "#{sign_value}",
  #                                                 timestamp: timestamp,
  #                                                 cinemaId: "152",
  #                                                 ticketId: "1556"}).inspect
  #   # 在 api 联通测试的时候用 inspect 来看的
  # end
end
