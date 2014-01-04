class Merchant < ActiveRecord::Base
  
  has_many :customers, through: :invoices
  has_many :invoices
  has_many :items
  
  has_token
  
end
