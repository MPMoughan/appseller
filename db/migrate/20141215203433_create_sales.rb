class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :buyer_id
      t.integer :seller_id

      t.timestamps
    end
    add_index :purchases, [:seller_id, :buyer_id], unique: true
  end
end
