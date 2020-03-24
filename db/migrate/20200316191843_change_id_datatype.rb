class ChangeIdDatatype < ActiveRecord::Migration
  def change
    change_column :loans, :borrower_id, :integer
    change_column :loans, :vendor_id, :integer
    change_column :loans, :lender_id, :integer
  end
end
