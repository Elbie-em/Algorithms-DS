require_relative 'queue.rb'

include QM

queue = QM::Queue.new

queue.add(3)
queue.add(5)
puts queue.remove

queue.add(2)
queue.add(7)
puts queue.remove
