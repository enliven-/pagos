require 'test_helper'

class CustomerTest < ActiveSupport::TestCase  
  test 'creates customer' do 
    @customer = build :customer
    assert @customer.valid?
    
    assert_difference 'Customer.count' do
      @customer.save!
    end
    assert_not_nil @customer.token
  end  
end
