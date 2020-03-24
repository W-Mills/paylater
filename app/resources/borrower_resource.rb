class BorrowerResource < JSONAPI::Resource
  attributes :name, :address, :phone, :email, :income, :expense
  has_many :Loans
  filter :loans
end
