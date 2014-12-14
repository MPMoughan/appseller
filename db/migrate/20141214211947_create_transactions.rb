class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :offer

      t.timestamps
    end
  end
end
