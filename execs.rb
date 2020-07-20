require_relative 'stacks.rb'

include Stacky

stack = Stack.new
stack.push(3)
stack.push(5)

puts stack.pop


stack.push(2)
stack.push(7)
puts stack.pop

puts stack.pop

puts stack.pop
