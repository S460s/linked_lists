require_relative './linked_list'

puts 'MAIN'

list = LinkedList.new

list.prepend(5)
list.append(6)
list.append(9)
list.append(10)

puts list
puts list.at(0).value

puts list.contains? 6
puts list.find(10).value

list.pop

puts list
