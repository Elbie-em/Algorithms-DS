require_relative 'linkedlistb.rb'

include LS

module Stacky
  class Stack

    def initialize
      @list = LinkedList.new
    end

    def push(number)
      @list.add(number)
    end
    
    def pop
      @list.remove(@list.length - 1)
    end
  end
end

