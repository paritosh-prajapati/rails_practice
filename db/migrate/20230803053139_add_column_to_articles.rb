class AddColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :email, :string
    add_column :articles, :age, :integer
  end
end
