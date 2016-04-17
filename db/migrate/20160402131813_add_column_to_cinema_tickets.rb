class AddColumnToCinemaTickets < ActiveRecord::Migration
  def change
    add_column :cinema_tickets, :cinemaId, :string
    add_column :cinema_tickets, :ticketId, :string
    add_column :cinema_tickets, :ticketType, :string
    add_column :cinema_tickets, :ticketName, :string
    add_column :cinema_tickets, :markerPrice, :string
    add_column :cinema_tickets, :price, :string
    add_column :cinema_tickets, :desc, :string
    add_column :cinema_tickets, :enableDay, :string
    add_column :cinema_tickets, :invalidationDate, :string
    add_column :cinema_tickets, :effectiveBeginTime, :string
  end
end
