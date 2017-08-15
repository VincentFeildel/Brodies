class ChangeUserLastName < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :second_name, :string
    add_column :users, :last_name, :string
  end
end
