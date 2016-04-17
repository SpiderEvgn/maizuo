class AddColumnToRealTimeSeats < ActiveRecord::Migration
  def change
    add_column :real_time_seats, :seatId, :string
    add_column :real_time_seats, :sectionId, :string
    add_column :real_time_seats, :rowId, :string
    add_column :real_time_seats, :rowNum, :string
    add_column :real_time_seats, :columnId, :string
    add_column :real_time_seats, :columnNum, :string
    add_column :real_time_seats, :damagedFlag, :string
    add_column :real_time_seats, :loveIndex, :string
    add_column :real_time_seats, :isLock, :string
  end
end
