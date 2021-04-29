class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.references :trade_type, null: false, foreign_key: true
      t.date :trade_date, null: false
      t.float :amount, null: false
      t.string :cpf, null: false
      t.string :card_number, null: false
      t.string :time, null: false
      t.string :store_owner, null: false
      t.string :store_name, null: false

      t.timestamps
    end
  end
end
