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

    if data < root.left.data
      if left == nil
        node = left
      else
        push
      end
    elsif data > root.right.data
      if right == nil
        node = right
      else
        push
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
      binding.pry
      node.push
    end
  end
end