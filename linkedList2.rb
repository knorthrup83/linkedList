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

def reverse_list(node, previous=nil)
  while node != nil
    cursor = node.next_node
    node.next_node = previous
    previous = node
    node = cursor
  end
  previous
end

def floyd(node)
  all_values = []
  loop do
    all_values << node.value
    if node.next_node != nil
      node = node.next_node    
    end
    break if all_values.include?(node.value)
  end
  if all_values.uniq.length != all_values.length
    result = true
  else
    result = false
  end
  return result
end

node1 = LinkedListNode.new(7)
node2 = LinkedListNode.new(37, node1)
node3 = LinkedListNode.new(96, node2)
node4 = LinkedListNode.new(45, node3)
node5 = LinkedListNode.new(12, node4)

print_values(node5)
puts "------"
reverse_list(node5)
print_values(node1)