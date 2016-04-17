class AddColumnsToFilms < ActiveRecord::Migration
  def change
    add_column :films, :filmId, :string
    add_column :films, :name, :string
    add_column :films, :director, :string
    add_column :films, :actors, :string
    add_column :films, :filmType, :string
    add_column :films, :area, :string
    add_column :films, :length, :string
    add_column :films, :releaseDate, :string
    add_column :films, :isShow, :string
    add_column :films, :language, :string
    add_column :films, :company, :string
    add_column :films, :info, :text
    add_column :films, :picAddr, :string
    add_column :films, :dimensional, :string
    add_column :films, :shortInfo, :string
    add_column :films, :videoUrl, :string
    add_column :films, :grade, :string
  end
end
