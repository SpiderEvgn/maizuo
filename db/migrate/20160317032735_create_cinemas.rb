class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|

      t.timestamps null: false
    end
  end
end
