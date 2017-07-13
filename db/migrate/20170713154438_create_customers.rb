class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zip
      t.string :phone
      t.references :bill, foreign_key: true

      t.timestamps
    end
  end
end
