require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/binary_search_tree'


class BSTTest < Minitest::Test

  def setup
    node = Node.new(10)
    @bst = BST.new
    @bst.root = node
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
    assert @bst.include?(13)
  end

  def test_it_can_count
    @bst.push(7)
    @bst.push(13)
    @bst.push(8)
    @bst.push(12)
    assert_equal 5, @bst.count
  end


end