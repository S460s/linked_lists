# Node class, containing a #value method and a link to the #next_node, set both as nil by default.
class Node
  attr_accessor :next_node
  attr_reader :value

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
