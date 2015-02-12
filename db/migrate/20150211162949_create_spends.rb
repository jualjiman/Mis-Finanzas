class CreateSpends < ActiveRecord::Migration
  def change
    create_table :spends do |t|
      t.float :amount
      t.references :category, index: true
      t.date :date
      t.text :subject

      t.timestamps null: false
    end
    add_foreign_key :spends, :categories
  end
end
