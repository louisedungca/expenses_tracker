class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.date :date
      t.decimal :amount, precision: 15, scale: 2
      t.string :expense_item, null: false
      t.text :remarks

      t.timestamps
    end
  end
end
