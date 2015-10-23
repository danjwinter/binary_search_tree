require './lib/linked_list.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_it_can_create_list
    list = LinkedList.new("Frank, John, Sue")
    binding.pry
    assert_equal "Frank", @head.value
  end
end