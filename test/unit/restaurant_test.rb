require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Restaurant.new.valid?
  end
end
