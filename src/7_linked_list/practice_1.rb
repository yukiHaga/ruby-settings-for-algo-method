# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_middle(head)
  return nil if head.next.nil?

  # pre_slow = head
  # slow = head
  # fast = head
  # i = 0

  # while fast && fast.next
  #   pre_slow = pre_slow.next if i.positive?
  #   slow = slow.next
  #   fast = fast.next.next
  #   i += 1
  # end

  # # slowは中間ノード
  # pre_slow.next = slow.next
  # head

  # こっちのが良い
  prev_slow = head
  slow = head
  fast = head

  while fast && fast.next
    prev_slow = slow
    slow = slow.next
    fast = fast.next.next
  end

  # slowは中間ノード
  prev_slow.next = slow.next
  head
end

