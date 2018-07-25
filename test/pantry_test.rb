require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  def test_it_exist
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_it_has_stock
    pantry = Pantry.new

    assert_equal Hash.new, pantry.stock
  end

  def test_stock_starts_at_zero
    pantry = Pantry.new

    pantry.stock_check("Cheese")

    assert_equal  0, pantry.stock_check("Cheese")
  end

  def test_it_can_restock
    pantry = Pantry.new

    pantry.restock("Cheese", 10)
    pantry.stock_check("Cheese")

    assert_equal 10, pantry.restock("Cheese", 10)
  end


end
