class AddIsSupplierToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_supplier, :boolean, :default => false
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
  end
end
