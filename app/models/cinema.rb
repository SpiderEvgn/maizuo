class Cinema < ActiveRecord::Base
  include HTTParty

  # 测试地址需要改变地址 /etc/hosts:  115.29.236.48  open.maizuo.com
  base_uri "http://open.maizuo.com"
  
  # default_params  暂且没有默认参数，注释掉以备将来之用
  format :json
  
  # debug_output 用来在 console 输出 api 调用过程
  debug_output $stdout
  default_timeout 5

  def self.getCinemas
    # 1. 拉取城市和影院列表
    time = Time.new
    timestamp = time.strftime("%Y%m%d%H%M%S")
    sign_value = Digest::MD5.hexdigest("client_id=52642103681&timestamp=#{timestamp}&key=xkGEr244(((<HAee4346fg")
    get("/rest/ticket3.0/cinemas", query: { client_id: "52642103681", 
                                            timestamp: "#{timestamp}", 
                                            sign: "#{sign_value}"})['data']['cinemas']
  end

end

# t.string   "cityId",         limit: 255 # 城市iD
# t.string   "cityName",       limit: 255 # 城市名称
# t.string   "cinemaId",       limit: 255 # 影院iD
# t.string   "cinemaName",     limit: 255 # 影院名称
# t.string   "logo",           limit: 255 # Logo图片
# t.string   "address",        limit: 255 # 影院地址
# t.string   "region",         limit: 255 # 所在区
# t.string   "phone",          limit: 255 # 影院电话
# t.string   "hallId",         limit: 255 # 影院所含厅ID列表，多个厅用 － 分隔
# t.string   "hallNames",      limit: 255 # 影院厅名称列表，多个用 － 分隔
# t.string   "seatCounts",     limit: 255 # 影院每个厅所含座位数，多个用 － 分隔；位置数量为 0
# t.string   "vipflags",       limit: 255 # 影院所在厅是否为VIP厅，多个用 － 分隔（0: 非VIP 1:VIP）
# t.string   "ticketFlag",     limit: 255 # 是否支持电子票（0:不支持 1:支持）
# t.string   "seatFlag",       limit: 255 # 是否支持订座票（0:不支持 1:支持）
# t.string   "busPath",        limit: 255 # 公交线路
# t.string   "subway",         limit: 255 # 地铁
# t.string   "businessCircle", limit: 255 # 商圈
# t.string   "longitude",      limit: 255 # 经度
# t.string   "latitude",       limit: 255 # 纬度