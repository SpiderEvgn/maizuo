class CreateRealTimeSeats < ActiveRecord::Migration
  def change
    create_table :real_time_seats do |t|

      t.timestamps null: false
    end
  end
end
