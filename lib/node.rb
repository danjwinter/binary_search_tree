class Node
  attr_reader :data
  attr_reader :left, :right

  def initialize(data)
    @data = data
  end

  def push(node)
    push_left(node)
    push_right(node)
  end

  def push_left(node)
    if data > node.data
      if left == nil
        @left = node
      else
        left.push(node)
      end
    end
  end

  def push_right(node)
    if data < node.data
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
      [self.data]
    elsif left.nil?
      [self.data] + right.sort
    elsif right.nil?
      left.sort + [self.data]
    else
      left.sort + [self.data] + right.sort
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
    if self.include?(value) == false
      return false
    else
      counter += 1
     if self.data == value
       return counter
     elsif self.data > value
       left.depth_of(value, counter)
     elsif self.data < value
      right.depth_of(value, counter)
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