class ChangeTable < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|

      t.string :product_name
      t.index :part_number
    end
  end
end
