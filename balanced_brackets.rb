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

class Stack
  def initialize
    @list = LinkedList.new
  end
  
  def top
    @list.get(@list.length - 1)
  end

  def push(number)
    # your code here
    @list.add(number)
  end
  
  def pop
    @list.remove(@list.length - 1)
  end

  def empty?
    if @list.empty?
      true
    else
      false
    end
  end
end

def is_tween?(sym,twin)
  if sym == '[' and twin == ']'
    true
  elsif sym == '{' and twin == '}'
    true
  elsif sym == '(' and twin == ')'
    true
  else
    false
  end
end

def balanced_brackets?(string)
  open_sym = ['[','{','('] 
  close_sym = [']','}',')']
  stk = Stack.new
  string.each_char do |c|
    if open_sym.any?(c)
      stk.push(c)
    elsif close_sym.any?(c)
        if stk.empty? or !is_tween?(stk.top,c)
          return false
          break
        else
          stk.pop
        end
    end
  end
  if stk.empty?
    return true
  else
    return false
  end
end