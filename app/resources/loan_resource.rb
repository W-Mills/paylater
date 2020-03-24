class LoanResource < JSONAPI::Resource
  attributes :amount, :category

  belongs_to :borrower
  belongs_to :vendor
  belongs_to :lender

  filter :borrower
  filter :vendor
  filter :lender
end
