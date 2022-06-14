require_relative './node'

# LinkedList class, which will represent the full list.
class LinkedList
  attr_reader :size, :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = @head
    else
      @tail.next_node = node
      @tail = @tail.next_node
    end
    @size += 1
    node
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = @head
    @head = node

    @size += 1
    node
  end
end
