class CreateMzapis < ActiveRecord::Migration
  def change
    create_table :mzapis do |t|

      t.timestamps null: false
    end
  end
end
