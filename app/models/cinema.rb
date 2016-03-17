class Cinema < ActiveRecord::Base
  include HTTParty

  # 测试地址需要改变地址 /etc/hosts:  115.29.236.48  open.maizuo.com
  base_uri "http://open.maizuo.com"
  
  # default_params  暂且没有默认参数，注释掉以备将来之用
  format :json
  
  # debug_output 用来在 console 输出 api 调用过程
  debug_output $stdout

  def self.getCinemas
    # 拉取城市和影院列表
    time = Time.new
    timestamp = time.strftime("%Y%m%d%H%M%S")
    sign_value = Digest::MD5.hexdigest("client_id=52642103681&timestamp=#{timestamp}&key=xkGEr244(((<HAee4346fg")
    get("/rest/ticket3.0/cinemas", query: { client_id: "52642103681", 
                                            timestamp: "#{timestamp}", 
                                            sign: "#{sign_value}"})['data']['cinemas']
  end

end
