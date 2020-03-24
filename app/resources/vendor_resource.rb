class VendorResource < JSONAPI::Resource
  attributes :name, :category
  has_many :Loans
  filter :loans
end
