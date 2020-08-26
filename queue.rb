require_relative 'linkedlistb.rb'

include LS

module QM
	class Queue
    
		def initialize
			@list = LinkedList.new
		end

		def ps
			p 'Here'
		end
					
		def add(number)
			 @list.add(number)
		end
						
		def remove
			if !@list.empty?
				 @list.remove(0)
			else
				 return -1
			end			
		end
	end
end

  
