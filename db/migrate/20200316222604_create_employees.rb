class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.text :name
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end
