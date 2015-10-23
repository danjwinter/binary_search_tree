require './lib/binary_search_tree'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BinarySearchTest < Minitest::Test

  def test_it_can_create_node
    node = SearchTree.new(5)
    assert_equal 5, node.value
  end

  def test_it_can_have_nodes_to_the_left
    node1 = SearchTree.new(5)
    node1.left = SearchTree.new(3)
  end
end




