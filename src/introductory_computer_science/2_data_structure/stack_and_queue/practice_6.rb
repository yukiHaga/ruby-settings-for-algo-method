# class Stack
#   attr_reader :values

#   # @param [Array<String>] values
#   def initialize(values: [])
#     @values = values
#   end

#   # @param [String] value
#   def push(value)
#     values.push(value)
#   end

#   def pop
#     values.pop
#   end

#   def empty?
#     values.empty?
#   end
# end

# begin
#   lines = readlines.map(&:chomp)
#   brackets = lines[1].split("")
#   querys = lines[3..].map(&:to_i)

#   stack = Stack.new(values: brackets)

#   querys.each do |query|
#     bracket = stack.values[query]

#     if bracket == "("
#       right_stack = Stack.new
#       stack.values[query + 1..].each.with_index(query + 1) do |value, i|
#         if value == "("
#           right_stack.push(value)
#         elsif value == ")"
#           if right_stack.empty?
#             puts i
#             break
#           else
#             right_stack.pop
#           end
#         end
#       end
#     elsif bracket == ")"
#       left_stack = Stack.new
#       stack.values[0..query - 1].each_with_index.reverse_each do |value, i|
#         if value == ")"
#           left_stack.push(value)
#         elsif value == "("
#           if left_stack.empty?
#             puts i
#             break
#           else
#             left_stack.pop
#           end
#         end
#       end
#     end
#   end
# rescue StandardError => e
#   p "raise error: #{e.message}"
# end

sales = [10,5,20,30,10]
m = [10,30,60]

# @param [Integer] sales
# @param [Array<Integer>] milestones
# return [Array<Integer>]
def solution(sales, milestones)
  sale_achieve_days = []
  acc_sale = 0

  milestones.each do |milestone|
    sales.each.with_index(1) do |sale, i|
      acc_sale += sale
      if acc_sale >= milestone
        sale_achieve_days.push(i)
        break
      end
    end

    sale_achieve_days.push(-1) if acc_sale < milestone
    acc_sale = 0
  end

  sale_achieve_days
end

p solution(sales, m)

