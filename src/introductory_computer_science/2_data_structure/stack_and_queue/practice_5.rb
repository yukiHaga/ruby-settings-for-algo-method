begin
  lines = readlines.map(&:chomp)
  brackets = lines[1].split("")
  right_bracket_stack = []
  brackets.each_with_index do |bracket, i|
    if bracket == "("
      right_bracket_stack.push(bracket)
    elsif bracket == ")"
      right_bracket_stack.pop
      if right_bracket_stack.empty?
        puts i
        break
      end
    end
  end
rescue StandardError => e
  p "raise error", e.message
end
