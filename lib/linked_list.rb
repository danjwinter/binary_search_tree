
class Node
  attr_accessor :data, :link_left, :link_right

  def initialize(data)
    @data = data
  end

  def push_left(node)
    if link_left.nil? &&
      @link_left = node
    else
      link_left.push
    end
  end

  def push_right(node)
    if link_right.nil?
      @link_right = node
    else
      link_right.push
    end
  end

  def push(node)
    if link_left.


  def count_left
    if link_left
      link_left.count_left + 1
    else
      1
    end
  end

  def count_right
    if link_right
      link_right.count_right + 1
    else
      1
    end
  end

  def count
    if link_left && link_right
      count_left + count_right
    elsif link_left
      count_left
    else link_right
      count_right
    end
  end

end

class List
  attr_reader :head


  def push(data)
    node = Node.new(data)
    if head.nil?
      @head = node
    elsif
      head.data > data
      head.link_left(node)
    else
      head.link_right(node)
    end
  end

  def push_left(node)
    if link_left.nil?
      link_left = node
    elsif link_left.data > node.data
      push_left
    elsif link_left.data == node.data
      return
    else
      push_right
    end
  end

  def push_right(node)
    if link_right.nil?
      link_right = node
    elsif link_right.data < node.data
      push_right(node)
    elsif link_right.data == node.data
      return
    else
      push_left
    end
  end


  def count
    if head
      head.count
    else
      0
    end
  end
end






numbers = (0.1000).to_a.sample(16)
numbers.each do |num|
  list.push(num)
end




end

