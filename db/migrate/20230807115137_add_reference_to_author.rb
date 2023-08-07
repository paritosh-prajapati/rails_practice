class AddReferenceToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :author, index: true
    add_foreign_key :books, :authors
  end
end
