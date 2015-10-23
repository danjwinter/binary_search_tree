require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'dst'


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
    @bst.push(5)
    assert_equal 5, @bst.root.left.data
  end

  def test_bst_pushes_right
    @bst.push(15)
    assert_equal 15, @bst.root.right.data
  end
end