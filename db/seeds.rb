# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Lenders = [
  ["BMO", 50000000],
  ["JP Morgan Chase", 100000000],
  ["Scotibank", 200000000]
]
Lenders.each do |name, amount|
  Lender.find_or_create_by(name:name, maximum:amount)
end

Vendors = [
  ["Indigo", "Books"],
  ["Lighthouse Labs", "Bootcamp"],
  ["MIT Online", "Program"],
  ["University of Toronto", "Masters"]
]
Vendors.each do |name, type|
  Vendor.find_or_create_by(name:name, category:type)
end

Borrowers = [
  ["Phoebe Buffay", "123 Riverdale Ave.", "phoebe@gmail.com", "6473789876", 900, 2500],
  ["Rachel Green", "59 Yonge St.", "rachel@gmail.com", "6473820387", 0, 3500],
  ["Chandler Bing", "91 Dundas St.", "thechanman@gmail.com", "4168745556", 2500, 3000]
]
Borrowers.each do |name, location, email, phone, income, expense|
  Borrower.find_or_create_by(name:name, address:location, email:email, phone:phone, income:income, expense:expense)
end

Loans = [
  [1, 4, 1, 15000, "Masters"],
  [2, 2, 3, 9000, "Bootcamp"],
  [3, 3, 2, 20000, "Program"]
]
Loans.each do |bid, vid, lid, amount, kind|
  Loan.find_or_create_by(borrower_id:bid, vendor_id:vid, lender_id:lid, amount:amount, category:kind)
end
