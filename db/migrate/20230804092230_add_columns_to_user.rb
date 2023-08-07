class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :email, :string
    add_column :users, :age, :integer
    add_column :users, :phone_no, :integer
    add_column :users, :login, :string
  end
end
