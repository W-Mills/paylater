class CreateBorrowers < ActiveRecord::Migration
  def change
    create_table :borrowers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.decimal :income
      t.decimal :expense

      t.timestamps null: false
    end
  end
end
