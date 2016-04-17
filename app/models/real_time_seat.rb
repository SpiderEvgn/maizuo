class RealTimeSeat < ActiveRecord::Base
  include HTTParty

  # 测试地址需要改变地址 /etc/hosts:  115.29.236.48  open.maizuo.com
  base_uri "http://open.maizuo.com"
  
  # default_params  暂且没有默认参数，注释掉以备将来之用
  format :json
  
  # debug_output 用来在 console 输出 api 调用过程
  debug_output $stdout
  default_timeout 5

  def self.getRealTimeSeats(foretellId)
    # 5. 拉取影厅实时座位图
    fId = foretellId
    time = Time.new
    timestamp = time.strftime("%Y%m%d%H%M%S")
    sign_value = Digest::MD5.hexdigest("client_id=52642103681&foretellId=#{fId}&timestamp=#{timestamp}&key=xkGEr244(((<HAee4346fg")
    get("/rest/ticket3.0/realTimeSeats", query: { client_id: "52642103681",  
                                                  sign: "#{sign_value}",
                                                  timestamp: "#{timestamp}",
                                                  foretellId: "#{fId}"
                                                  })
  end
end

# t.string   "seatId",      limit: 255 # 座位ID
# t.string   "sectionId",   limit: 255 # 影厅区域
# t.string   "rowId",       limit: 255 # 行编号
# t.string   "rowNum",      limit: 255 # 行号（座位位置图的 y 坐标）
# t.string   "columnId",    limit: 255 # 列编号
# t.string   "columnNum",   limit: 255 # 列好（座位位置图的 x 坐标）
# t.string   "damagedFlag", limit: 255 # 座位损坏标志（Y/N）
# t.string   "loveIndex",   limit: 255 # 情侣座标志（0:非情侣座 1、2:情侣首位座）
# t.string   "isLock",      limit: 255 # 座位是否锁定（0:没有 1:已锁）