class DropDecimalColumn < ActiveRecord::Migration
  def change
    remove_column :loans, :decimal, :string
  end
end
