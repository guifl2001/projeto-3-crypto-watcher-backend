class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :crypto
      t.float :buying_price
      t.integer :quantity
      t.text :notes

      t.timestamps
    end
  end
end
