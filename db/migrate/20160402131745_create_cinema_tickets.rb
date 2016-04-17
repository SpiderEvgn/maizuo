class CreateCinemaTickets < ActiveRecord::Migration
  def change
    create_table :cinema_tickets do |t|

      t.timestamps null: false
    end
  end
end
