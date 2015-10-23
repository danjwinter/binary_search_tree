require 'pry'


class Node
  attr_reader :data
  # attr_accessor :left, :right
  attr_reader :left, :right

  def initialize(data)
    @data = data
    # @left = nil
    # @right = nil
  end

  def push(node)
    if data > node.data
      if left == nil
        @left = node
      else
        left.push(node)
      end
    elsif data < node.data
      if right == nil
        @right = node
      else
        right.push(node)
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
      root.push(node)
    end
  end

  def include?(data)
    if self.root.data == data
      return true
    end
  end
end