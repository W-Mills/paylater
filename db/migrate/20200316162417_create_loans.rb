class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.decimal :borrower_id
      t.decimal :vendor_id
      t.string :lender_id
      t.string :decimal
      t.decimal :amount
      t.string :category

      t.timestamps null: false
    end
  end
end
