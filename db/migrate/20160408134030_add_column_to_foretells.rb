class AddColumnToForetells < ActiveRecord::Migration
  def change
  	add_column :foretells, :cinemaId, :string
    add_column :foretells, :showDate, :string
    add_column :foretells, :showTime, :string
    add_column :foretells, :hallId, :string
    add_column :foretells, :hallName, :string
    add_column :foretells, :foretellId, :string
    add_column :foretells, :filmId, :string
    add_column :foretells, :price, :string
    add_column :foretells, :marketPrice, :string
    add_column :foretells, :flag, :string
    add_column :foretells, :language, :string
    add_column :foretells, :duration, :string
    add_column :foretells, :timeout, :string
    add_column :foretells, :sectionId, :string
    add_column :foretells, :dimensional, :string
    add_column :foretells, :offerId, :string
    add_column :foretells, :lockNeedMobile, :string
  end
end
