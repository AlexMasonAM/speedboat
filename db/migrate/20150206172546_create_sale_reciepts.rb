class CreateSaleReciepts < ActiveRecord::Migration
  def change
    create_table :sale_reciepts do |t|
      t.references :customer, index: true
      t.references :speedboat, index: true

      t.timestamps null: false
    end
    add_foreign_key :sale_reciepts, :customers
    add_foreign_key :sale_reciepts, :speedboats
  end
end
