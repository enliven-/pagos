class Item < ActiveRecord::Base
  # Could be product or service
  
  belongs_to :invoice
  belongs_to :vendor
  
end
