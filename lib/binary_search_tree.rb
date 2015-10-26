require_relative 'node'
require_relative 'file_io'
require 'pry'

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

  def parsed_incoming_items(string)
    split_string = string.split("\n")
    split_string.each do |item|
      detect_number_or_string_and_push(item)
    end
  end

  def detect_number_or_string_and_push(item)
    if item[0] >= "0" && item[0] <= "9"
      self.push(item.to_i)
    elsif item[1] >= "0" && item[1] <= "9"
      self.push(item.to_i)
    else
      self.push(item)
    end
  end

  def parse_and_sorted_numbers(string)
    parsed_incoming_items(string)
    self.sort.join("\n")
  end


end

if __FILE__ == $0
file = FileIO.new
incoming_string = file.load_file(ARGV[0])
bst = BST.new
sorted = bst.parse_and_sorted_numbers(incoming_string)
file.write_file(sorted, ARGV[1])
end

