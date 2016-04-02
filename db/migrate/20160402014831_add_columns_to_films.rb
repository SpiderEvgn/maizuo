class AddColumnsToFilms < ActiveRecord::Migration
  def change
  	add_column :films, :totalMovieCount, :string
  	add_column :films, :movieCount, :string
  	add_column :films, :filmId, :string     # 文档原字段是 id，与默认冲突
  	add_column :films, :name, :string
  	add_column :films, :director, :string
    add_column :films, :actors, :string
    add_column :films, :filmType, :string   # 文档原字段是 type，与默认冲突
    add_column :films, :area, :string
    add_column :films, :length, :string
    add_column :films, :releaseDate, :string
    add_column :films, :isShow, :string
    add_column :films, :language, :string
    add_column :films, :company, :string
    add_column :films, :info, :text
    add_column :films, :picAddr, :string     # 图片源
    add_column :films, :dimensional, :string
    add_column :films, :shortinfo, :string
    add_column :films, :videoUrl, :string
    add_column :films, :grade, :string
  end
end
