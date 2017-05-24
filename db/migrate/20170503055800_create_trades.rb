class CreateTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :trades do |t|
      t.integer :trade_type
      t.references :buyer, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
