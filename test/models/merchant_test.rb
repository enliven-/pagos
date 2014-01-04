require 'test_helper'

class MerchantTest < ActiveSupport::TestCase
  test 'creates merchant' do
    @merchant = build :merchant
    assert @merchant.valid?
    
    assert_difference 'Merchant.count' do
      @merchant.save!
    end
    assert_not_nil @merchant.token
  end
end
