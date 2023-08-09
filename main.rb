require_relative 'lib/linked_list'

list = LinkedList.new

#test it out
list.append(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)

list.prepend(0)
list.prepend(-1)
list.prepend(-2)

puts list.size

puts list.head
puts list.tail

puts list.at(3).value
puts list.pop.value

puts list.contains?(3)
puts list.find(3)

puts list.to_s
