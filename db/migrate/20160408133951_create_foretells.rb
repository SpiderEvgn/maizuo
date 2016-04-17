class CreateForetells < ActiveRecord::Migration
  def change
    create_table :foretells do |t|

      t.timestamps null: false
    end
  end
end
