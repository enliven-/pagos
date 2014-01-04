require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'creates item' do
    @item = build :item
    assert @item.valid?
    
    assert_difference 'Item.count' do
      @item.save
    end
  end
end
