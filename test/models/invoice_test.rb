require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase  
  test 'creates invoice' do 
    @invoice = build :invoice
    assert @invoice.valid?
    
    assert_difference 'Invoice.count' do
      @invoice.save!
    end
    assert_not_nil @invoice.token
  end 
end
