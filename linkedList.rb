class Stack
  attr_reader :data

  def initialize
    @data = []
  end

  def push(value)
    @data << value
  end

  def pop
    @data.delete_at(@data.length - 1)
  end 

  def peek
    @data.last
  end
end

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
  end
end

node1 = LinkedListNode.new(7)
node2 = LinkedListNode.new(37, node1)
node3 = LinkedListNode.new(96, node2)

def reverse_list(node)
  stack = Stack.new

  while node != nil do 
    stack.push(node)
    node = node.next_node
  end

  first_node = stack.pop
  cursor_node = first_node
  while stack.peek != nil do
    cursor_node.next_node = stack.pop
    cursor_node = cursor_node.next_node
  end
  cursor_node.next_node = nil
  first_node
end



print_values(node3)

puts "-------"

revlist = reverse_list(node3)
print_values(revlist)
