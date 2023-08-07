class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.datetime :published_at
      t.string :published_by

      t.timestamps
    end
  end
end
