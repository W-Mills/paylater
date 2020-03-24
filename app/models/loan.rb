class Loan < ActiveRecord::Base
  belongs_to :borrower
  belongs_to :vendor
  belongs_to :lender
end
