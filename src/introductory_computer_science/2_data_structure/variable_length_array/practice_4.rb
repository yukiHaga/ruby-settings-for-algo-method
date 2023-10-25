class DataStorage
  attr_reader :numbers

  # @param [Array<Integer>] numbers
  # return [Array<Integer>]
  def initialize(numbers:)
    @numbers = numbers
  end

  # @param [Integer] index
  # @param [Integer] element
  # return [Integer]
  def insert(index:, element:)
    numbers.insert(index, element)
  end

  # @param [Integer] index
  # return [Integer]
  def erase(index:)
    numbers.delete_at(index)
  end

  # @param [Integer] element
  # return [Integer]
  def count(element:)
    numbers.count(element)
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
      data_storage.insert(index: query[1], element: query[2])
    when 1
      data_storage.erase(index: query[1])
    when 2
      puts data_storage.count(element: query[1])
    end
  end
rescue StandardError => e
  p "raise: error", e
end
