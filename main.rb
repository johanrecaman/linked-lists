require_relative 'lib/linked_list'

list = LinkedList.new

#test it out
5.times do |i|
    list.append(i)
end

for i in -3..-1
    list.prepend(i)
end

puts list.size

puts list.head
puts list.tail

puts list.at(3).value
puts list.pop.value

puts list.contains?(3)
puts list.find(3)

puts list.to_s
