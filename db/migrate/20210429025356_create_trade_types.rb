class CreateTradeTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :trade_types do |t|
      t.integer :mode, null: false
      t.string :name, null: false
      t.integer :nature, null: false
      t.string :operator, null: false

      t.timestamps
    end
  end
end
