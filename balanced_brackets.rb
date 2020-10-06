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

  def length
    @list.length
  end
  
  def empty?
    if @list.count == 0;
      true
    else
      false
    end
  end
end