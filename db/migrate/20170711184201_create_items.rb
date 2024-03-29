class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :bill, foreign_key: true
      t.string :name
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
