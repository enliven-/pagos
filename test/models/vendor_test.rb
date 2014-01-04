require 'test_helper'

class VendorTest < ActiveSupport::TestCase
  test 'creates vendor' do
    @vendor = build :vendor
    assert @vendor.valid?
    
    assert_difference 'Vendor.count' do
      @vendor.save!
    end
    assert_not_nil @vendor.token
  end
end
