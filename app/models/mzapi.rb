class Mzapi < ActiveRecord::Base
  include HTTParty

  base_uri "http://open.maizuo.com"
  # sign_value = Digest::MD5.hexdigest("client_id=52642103681&timestamp=20160312214012&key=xkGEr244(((<HAee4346fg")
  # sign = Digest::MD5.hexdigest("client_id=52642103681"&&"timestamp=20160311203012"&&"key=xkGEr244(((<HAee4346fg")
  # default_params sign: sign_value
    # client_id: "52642103681", timestamp: "20160311203012", 
  # format :json
  def self.getcinemas
    sign_value = Digest::MD5.hexdigest("client_id=52642103681&timestamp=20160312214012&key=xkGEr244(((<HAee4346fg")
    # get("/rest/ticket3.0/cinemas?client_id=52642103681&sign=#{sign_value}&timestamp=20160312214012&start=0&count=10&isShow=1&cityId=0")
    get("/rest/ticket3.0/cinemas", query: { client_id: "52642103681", timestamp: "20160312214012", sign: "#{sign_value}"})
  end
end
