require_relative './linked_list'

puts 'MAIN'

list = LinkedList.new

list.prepend(5)
list.append(6)
list.append(9)
list.append(10)

p list.tail.value

p "list: #{list}"

p list.at(0).value
p list.at(1).value

p list.pop.value

p list.to_s
