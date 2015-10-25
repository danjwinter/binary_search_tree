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

  def count
    if left && right
      1 + left.count + right.count
    elsif left && !right
      1 + left.count
    elsif right && !left
      1 + right.count
    else
      1
    end
  end

  def sort
    if left.nil? && right.nil?
      "#{self.data}"
    elsif left.nil?
    "#{self.data}" + " " + "#{right.sort}"
    elsif right.nil?
      "#{left.sort}" + " " + "#{self.data}"
    else
    "#{left.sort}" + " " + "#{self.data}" + " " + "#{right.sort}"
    end
  end

  def max
    if right.nil?
      return self.data
    else
      right.max
    end
  end

  def min
    if left.nil?
      return self.data
    else
      left.min
    end
  end

  def depth_of(value, counter=0)
    binding.pry
    if self.data == value
      return counter
    unless food.empty?
      food.map do |side|
        side.depth_of(value, counter += 1)
      end
    end
    end
    counter
  end

  def food
    arr = []
    if left
      arr << self.left
    elsif right
      arr << self.right
    end
    arr
  end



    def depth?(value, counter=0)
      if self.include?(value) == false
        return false
      else
        counter += 1
       if self.data == value
         return counter
       elsif self.data > value
         left.depth?(value, counter)
       elsif self.data < value
        right.depth?(value, counter)
       end
     end
    end


  def include?(value)
   if self.data == value
     return true
   elsif self.data > value
     left.include?(value)
   elsif self.data < value
    right.include?(value)
   else
      false
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
      root.depth?(value)
    end
  end
end