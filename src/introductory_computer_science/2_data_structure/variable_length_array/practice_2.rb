class DataStorage
  attr_reader :numbers

  # @param [Array<Integer>] numbers
  # return [Array<Integer>]
  def initialize(numbers:)
    @numbers = numbers
  end

  # @param [Integer] index
  # return [Integer | Error]
  def select(index)
    numbers[index] || StandardError.new("Error")
  end

  # @param [Integer] element
  # return [Boolean]
  def create(element)
    numbers.push(element)
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
        puts data_storage.select(query[1])
      rescue StandardError => e
        p "raise: error", e
      end
    when 1
      data_storage.create(query[1])
    end
  end
rescue StandardError => e
  p "raise: error", e
end
