class Node
  attr_reader :value
  def initialize(value)
    @value = value
  end
end

class LinkedList
attr_accessor :head,:next

  def initialize(string)
    create_list(string)
  end

  def create_list(string)
    string = string.split
    string.each do |item|
      if index == 0
        @head = Node.new(item)
      end
    end
  end

  def find_tail
    current_node = @head
    until current_node.next == nil
      current_node = current_node.next
    end
  end




end

