require 'pry'

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def push
    binding.pry
    if data < @bst.root.data
      if left == nil
        node = left
      else node.push
      end
    elsif data > @bst.root.data
      if right == nil
        node = right
      else
        node.push
      end
    else
      return
    end
  end
end


class BST
attr_accessor :root

  def initialize
    @root = nil
  end

  def push(data)
    node = Node.new(data)
    if root.nil?
      @root = node
    else
      node.push
    end
  end
end