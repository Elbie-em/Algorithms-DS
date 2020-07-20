class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList

  def initialize
    @list = Array.new
    @head = nil
  end

  def add(number)
    @head = Node.new(number)
    @list << @head.value
  end

  def get(index)
    @list[index]
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)