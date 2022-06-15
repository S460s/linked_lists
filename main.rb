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
puts list.size

list.insert_at(0, 3)
list.insert_at(2, 0)

puts list

list.insert_at(1111, 1)

puts list
