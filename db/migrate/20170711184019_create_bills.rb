class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :client
      t.string :description
      t.date :due

      t.timestamps
    end
  end
end
