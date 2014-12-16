class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :sku
      t.string :description
      t.integer :price
      t.references :sale

      t.timestamps
    end
  end
end
