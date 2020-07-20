# Code from start linked list and node.
module DS

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

    def add_at(index, item)
      @list.insert(index,item)
    end
    
    def remove(index)
      @list.delete_at(index)
    end
  end

end

include DS

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)


puts list.get(3)

