class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
  end
end

def reverse_list(head)
  prev_current_node = nil

  while head
    current_node = head
    head = current_node.next
    current_node.next = prev_current_node
    prev_current_node = current_node
  end

  prev_current_node
end

def pair_sum(head)
  last = reverse_list(head)
  max_sum = 0

  i = 0
  j =

  while i < j
    sum = head.val + last.val
    max_sum = sum if sum > max_sum
    head =
  end



end

head = ListNode.new(1)
node_2 = ListNode.new(2)
node_3 = ListNode.new(3)
node_4 = ListNode.new(4)
node_5 = ListNode.new(5)

head.next = node_2
node_2.next = node_3
node_3.next = node_4
node_4.next = node_5

pp reverse_list(head)