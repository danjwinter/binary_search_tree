require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/binary_search_tree'


class BSTTest < Minitest::Test

  def setup
    # node = Node.new(10)
    @bst = BST.new
    @bst.push(10)
    # @bst.root = node
  end

  def test_it_can_place_root
    assert_equal 10, @bst.root.data
  end

  def test_bst_pushes_left
    # binding.pry
    @bst.push(5)

    assert_equal 5, @bst.root.left.data
  end

  def test_bst_pushes_right
    @bst.push(15)
    assert_equal 15, @bst.root.right.data
  end

  def test_bst_pushes_multiple_levels_left
    @bst.push(7)
    @bst.push(6)
    @bst.push(5)
    assert_equal 7, @bst.root.left.data
    assert_equal 6, @bst.root.left.left.data
    assert_equal 5, @bst.root.left.left.left.data
  end

  def test_bst_pushes_multiple_levels_right
    @bst.push(11)
    @bst.push(12)
    @bst.push(13)
    assert_equal 11, @bst.root.right.data
    assert_equal 12, @bst.root.right.right.data
    assert_equal 13, @bst.root.right.right.right.data
  end

  def test_bst_pushes_left_and_right
    @bst.push(7)
    @bst.push(11)
    assert_equal 7, @bst.root.left.data
    assert_equal 11, @bst.root.right.data
  end

  def test_bst_pushes_left_and_right_multiple_levels
    @bst.push(7)
    @bst.push(13)
    @bst.push(8)
    @bst.push(12)
    assert_equal 8, @bst.root.left.right.data
    assert_equal 12, @bst.root.right.left.data
  end

  def test_it_can_detect_if_root_value_is_included
    assert @bst.include?(10)
  end

  def test_it_can_detect_values_multiple_levels
    @bst.push(13)
    @bst.push(44)
    @bst.push(77)
    @bst.push(55)
    @bst.push(12)
    assert @bst.include?(13)
    assert @bst.include?(44), "this is 44"
    assert @bst.include?(77)
    assert @bst.include?(55)
    assert @bst.include?(12)
  end

  def test_it_can_count
    @bst.push(7)
    @bst.push(13)
    @bst.push(8)
    @bst.push(12)
    assert_equal 5, @bst.count
  end

  def test_it_can_find_max
    assert_equal 10, @bst.max
  end

  def test_it_can_find_min
    assert_equal 10, @bst.min
  end

  def test_it_can_find_max_and_min_multiple_levels
    @bst.push(20)
    @bst.push(1)
    @bst.push(78)
    @bst.push(54)
    @bst.push(111)
    @bst.push(4)
    assert_equal 111, @bst.max
    assert_equal 1, @bst.min
  end

  def test_it_can_find_depth
    assert_equal 1, @bst.depth_of(10)
  end

  def test_it_can_find_depth_at_multiple_levels
    @bst.push(20)
    @bst.push(1)
    @bst.push(78)
    @bst.push(54)
    @bst.push(111)
    @bst.push(4)
    assert_equal 2, @bst.depth_of(20), "this is for 20"
    assert_equal 2, @bst.depth_of(1)
    assert_equal 3, @bst.depth_of(78)
    assert_equal 3, @bst.depth_of(4)
    assert_equal 4, @bst.depth_of(54)
    assert_equal 4, @bst.depth_of(111)
  end

  def test_it_can_sort
    @bst.push(20)
    @bst.push(1)
    @bst.push(78)
    @bst.push(54)
    @bst.push(111)
    @bst.push(4)
    assert_equal [1, 4, 10, 20, 54, 78, 111], @bst.sort
  end

end