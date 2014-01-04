class Invoice < ActiveRecord::Base
  # Remove email column, ideally the solution is to create a mini account for customer if not signed-up. And have relationship between invoice and customer [invoice.customer_id]
  
  enum state: {
    unpaid:   0,
    paid:     1,
    dispute:  2
  }
  
  scope :due, -> { where('state =? AND due_at <= ?', 0, Time.now) }
  scope :paid, -> { where(state: 1) }
  scope :unpaid, -> { where(state: 0) }
  
  belongs_to :customer
  belongs_to :vendor
  
  has_many :items
  
  has_token
  
  def due?
    true if unpaid? && due_at < Time.now
  end
  
  def due_tommorrow?
    true if unpaid? && due_at < (Time.now - 1.day)
  end
  
  # In real it goes thru various checks and verifies if the amount is recieved with us, for sandbox it mocks the payment
  def pay_up!
    paid!
  end
  
  def customer
    Customer.find_by(email: email)
  end
  
end
