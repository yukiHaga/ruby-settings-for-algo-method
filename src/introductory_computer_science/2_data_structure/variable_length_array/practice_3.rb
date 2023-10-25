class DataStorage
  attr_reader :numbers

  # @param [Array<Integer>] numbers
  # return [Array<Integer>]
  def initialize(numbers:)
    @numbers = numbers
  end

  # @param [Integer] element
  # return [Boolean]
  def push(element)
    numbers.push(element)
  end

  # return [Integer | Error]
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
      begin
        data_storage.push(query[1])
      rescue StandardError => e
        p "raise: error", e
      end
    when 1
      puts data_storage.pop
    end
  end
rescue StandardError => e
  p "raise: error", e
end
