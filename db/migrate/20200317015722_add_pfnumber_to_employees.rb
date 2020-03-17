class AddPfnumberToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :tfnnumber, :int
  end
end
