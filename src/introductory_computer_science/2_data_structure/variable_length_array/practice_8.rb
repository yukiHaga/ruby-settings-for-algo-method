class DataStorage
  attr_reader :numbers

  # @param [Array<Integer>] numbers
  # return [Array<Integer>]
  def initialize(numbers:)
    @numbers = numbers
  end

  # @param [Integer] element
  # return [Array<Integer>]
  def push_front(element)
    numbers.unshift(element)
  end

  # @param [Integer] element
  # return [Array<Integer>]
  def push_back(element)
    numbers.push(element)
  end

  # @param [Integer] index
  # return [Integer]
  def get(index)
    raise StandardError.new("Error") if numbers[index].nil?

    numbers[index]
  end
end

begin
  lines = readlines.map(&:chomp)

  numbers = lines[1].split.map(&:to_i)
  data_storage = DataStorage.new(numbers: numbers)
  querys_count = lines[2].to_i

  querys = lines[3..].map { |line| line.split.map(&:to_i) }

  (0..querys_count - 1).each do |index|
    begin
      query = querys[index]
      case query[0]
      when 0
        data_storage.push_front(query[1])
      when 1
        data_storage.push_back(query[1])
      when 2
        puts data_storage.get(query[1])
      end
    rescue StandardError => e
      puts e.message
    end
  end
rescue StandardError => e
  p "raise: error", e
end
