# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
  end
end

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return nil if head.nil?

  even = head
  first_odd = head.next
  odd = head.next

  while odd && odd.next
    even.next = even.next.next
    even = even.next

    odd.next = odd.next.next
    break unless odd.next

    odd = odd.next
  end

  even.next = first_odd

  head
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

pp odd_even_list(head)
