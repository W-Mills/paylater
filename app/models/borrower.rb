class Borrower < ActiveRecord::Base
  has_many :loan
end

# subclass from ApplicationRecord or ActiveRecord::Base??
# class Borrower < ApplicationRecord
#   has_many :loan
# end
