class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def push
    if 

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