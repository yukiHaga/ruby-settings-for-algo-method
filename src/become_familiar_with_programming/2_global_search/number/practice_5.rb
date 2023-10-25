begin
  number = gets.chomp.to_i
  raise StandardError.new("1以上の整数を入力してください") if number < 1

  (1..number).each do |i|
    if (i % 15).zero?
      puts "FizzBuzz"
    elsif (i % 3).zero?
      puts "Fizz"
    elsif (i % 5).zero?
      puts "Buzz"
    else
      puts i
    end
  end
rescue StandardError => e
  p "raise: error", e
end
