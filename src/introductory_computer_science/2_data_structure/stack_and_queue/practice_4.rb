class Stack
  attr_reader :numbers

  def initialize
    @numbers = []
  end

  # @param [Integer] number
  def push(number)
    numbers.push(number)
  end

  def pop
    numbers.pop
  end
end

begin
  lines = readlines.map(&:chomp)
  formula = lines[0]
  characters = lines[2].split

  stack = Stack.new
  until characters.empty?
    character = characters.shift
    case character
    when "+"
      stack.push(stack.pop + stack.pop)
    when "-"
      first_number = stack.pop
      second_number = stack.pop
      stack.push(second_number - first_number)
    when "*"
      stack.push(stack.pop * stack.pop)
    else
      stack.push(character.to_i)
    end
  end
  puts [formula, "=", stack.pop].join
rescue StandardError => e
  p "raise error: ", e.message
end
