require_relative 'linkedlistb.rb'

include LS

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
puts list.get(3)
