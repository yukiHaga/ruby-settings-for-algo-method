def prime_number?(target_number)
  return false if target_number < 2
  return true if target_number == 2

  (2..target_number - 1).each do |number|
    return false if (target_number % number).zero?
  end

  true
end

begin
  target_number = gets.chomp.to_i
  if prime_number?(target_number)
    puts "Yes"
  else
    puts "No"
  end
rescue StandardError => e
  p "raise: error", e
end
