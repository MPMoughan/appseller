class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :buyer_id
      t.integer :seller_id

      t.timestamps
    end
  end
end
