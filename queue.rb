require_relative 'linkedlistb.rb'

include LS

module QueueModule

  class Queue

    def initialize
			@list = LinkedList.new
		end
		
		def add(number)
			@list.add(number)
		end
		
		def remove
			@list.remove(0)
		end
	end
	
end