class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
      t.string :name
      t.decimal :maximum

      t.timestamps null: false
    end
  end
end
