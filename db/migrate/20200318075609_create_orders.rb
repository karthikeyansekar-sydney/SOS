class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :item
      t.string :name
      t.string :projectname
      t.string :status, :default => 'pending'
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
