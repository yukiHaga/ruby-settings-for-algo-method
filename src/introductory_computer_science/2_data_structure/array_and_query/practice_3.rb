class DataStorage
  attr_reader :numbers

  # @param [Array<Integer>] numbers
  # return [Array<Integer>]
  def initialize(numbers: [3, 1, 4, 1, 5, 9, 2, 6, 5, 3])
    @numbers = numbers
  end

  # @param [Integer] index
  # return [Integer]
  def select(index)
    numbers[index]
  end

  # @param [Integer] index
  # @param [Integer] element
  # return [Boolean]
  def update(index, element)
    return false unless numbers[index]

    # これはインスタンス変数を書き換えているだけか
    numbers[index] = element
    true
  end
end

begin
  data_storage = DataStorage.new

  lines = readlines.map(&:chomp)
  querys_count = lines[0].to_i
  querys = lines[1..].map { |line| line.split.map(&:to_i) }

  (0..querys_count - 1).each do |index|
    query = querys[index]
    case query[0]
    when 0
      puts data_storage.select(query[1])
    when 1
      data_storage.update(query[1], query[2])
    end
  end
rescue StandardError => e
  p "raise: error", e
end
