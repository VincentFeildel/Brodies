class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.boolean :is_outdoor
      t.string :category
      t.integer :capacity
      t.references :user, foreign_key: true
      t.string :address
      t.integer :zip_code
      t.string :city

      t.timestamps
    end
  end
end
