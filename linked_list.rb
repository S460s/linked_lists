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
      handle_first_node(node)
    else
      @tail.next_node = node
      @tail = @tail.next_node
    end
    @size += 1
    node
  end

  def at(index)
    current = @head
    i = 0
    loop do
      return current if index == i

      current = current.next_node
      throw 'index out of range' if current.nil?
      i += 1
    end
  end

  def contains?(value)
    find_by_value(value, false)
  end

  def find(value)
    find_by_value(value, true)
  end

  def pop
    popped = @tail
    @tail = at(@size - 2)
    @tail.next_node = nil
    @size -= 1
    popped
  end

  def prepend(value)
    node = Node.new(value)

    if @head.nil?
      handle_first_node(node)
    else
      node.next_node = @head
      @head = node
    end

    @size += 1
    node
  end

  def to_s
    current = @head
    acc = ''
    loop do
      acc << "[#{current.value}] -> "
      break if current.next_node.nil?

      current = current.next_node
    end
    acc + 'nil'
  end

  private

  def find_by_value(value, like_find)
    current = @head
    @size.times do
      return like_find ? current : true if current.value == value

      current = current.next_node
    end
    like_find ? nil : false
  end

  def handle_first_node(node)
    @head = node
    @tail = @head
  end
end
