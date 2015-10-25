require_relative 'node'

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

  def include?(value)
    if !root
      return false
    else
      root.include?(value)
    end
  end

  def count
    if root.nil?
      0
    else
    root.count
    end
  end

  def sort
    if root.nil?
      nil
    else
      root.sort
    end
  end

  def max
    if root.nil?
      return nil
    else
      root.max
    end
  end

  def min
    if root.nil?
      return nil
    else
      root.min
    end
  end

  def depth_of(value)
    if root.nil?
      return nil
    else
      root.depth_of(value)
    end
  end
end