class CreateItemsUsers < ActiveRecord::Migration
  def change
    create_table :items_users do |t|

      t.timestamps
    end
  end
end
