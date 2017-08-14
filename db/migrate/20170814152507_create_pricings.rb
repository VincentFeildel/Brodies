class CreatePricings < ActiveRecord::Migration[5.1]
  def change
    create_table :pricings do |t|
      t.text :description
      t.integer :amount
      t.references :activity, foreign_key: true
      t.string :price_type

      t.timestamps
    end
  end
end
