class AddColumnsToCinemas < ActiveRecord::Migration
  def change
    add_column :cinemas, :cityId, :string
    add_column :cinemas, :cityName, :string
    add_column :cinemas, :cinemaId, :string
    add_column :cinemas, :cinemaName, :string
    add_column :cinemas, :logo, :string        # 图片源
    add_column :cinemas, :address, :string
    add_column :cinemas, :region, :string
    add_column :cinemas, :phone, :string
    add_column :cinemas, :hallId, :string
    add_column :cinemas, :hallNames, :string
    add_column :cinemas, :seatCounts, :string
    add_column :cinemas, :vipflags, :string
    add_column :cinemas, :ticketFlag, :string
    add_column :cinemas, :seatFlag, :string
    add_column :cinemas, :busPath, :string
    add_column :cinemas, :subway, :string
    add_column :cinemas, :businessCircle, :string
    add_column :cinemas, :longitude, :string
    add_column :cinemas, :latitude, :string
  end
end