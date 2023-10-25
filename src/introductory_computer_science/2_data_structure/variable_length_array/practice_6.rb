class DataStorage
  attr_reader :numbers

  # @param [Array<Integer>] numbers
  # return [Array<Integer>]
  def initialize(numbers:)
    @numbers = numbers
  end

  # return [Array<Integer>]
  def reverse
    numbers.reverse!
  end

  # @param [Integer] element
  # return [Array<Integer>]
  def push(element)
    numbers.push(element)
  end

  def pop
    return StandardError.new("Error") if numbers.empty?

    numbers.pop
  end
end

begin
  lines = readlines.map(&:chomp)

  numbers = lines[1].split.map(&:to_i)
  data_storage = DataStorage.new(numbers: numbers)
  querys_count = lines[2].to_i

  querys = lines[3..].map { |line| line.split.map(&:to_i) }

  (0..querys_count - 1).each do |index|
    query = querys[index]
    case query[0]
    when 0
      data_storage.reverse
    when 1
      data_storage.push(query[1])
    when 2
      puts data_storage.pop
    end
  end
rescue StandardError => e
  p "raise: error", e
end
