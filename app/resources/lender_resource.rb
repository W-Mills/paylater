class LenderResource < JSONAPI::Resource
  attributes :name, :maximum
  has_many :Loans
  filter :loans
end
