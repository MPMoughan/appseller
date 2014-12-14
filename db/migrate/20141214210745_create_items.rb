class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.float :price
      t.string :category
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
