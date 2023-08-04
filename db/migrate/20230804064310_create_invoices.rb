class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :customer_name
      t.integer :order_id
      t.integer :discount
      t.integer :total_value
      t.date :expiration_date
      t.timestamps
    end
  end
end
