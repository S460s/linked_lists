require_relative './linked_list'

puts 'MAIN'

list = LinkedList.new

list.append 0
list.append 1
list.append 2
list.append 3

puts list

list.remove_at 2

puts list
list.remove_at 2
puts list
list.remove_at 0
puts list
