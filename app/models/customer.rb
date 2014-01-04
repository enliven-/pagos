class Customer < ActiveRecord::Base
  
  enum state: {
     unactivited: 0,
     activited:   1,
     closed:      2,
     reopened:    3
   }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
  has_many :invoices
  
  has_token
  
  # Delete this method when relationship is implemented
  def invoices
    Invoice.where(email: email)
  end
 
end
