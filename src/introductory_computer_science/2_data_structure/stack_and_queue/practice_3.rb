# キューを配列で実装する
# キューもスタックも、配列以外でも連結リストなど、さまざまな方法で実装できる

class Queue
  attr_reader :numbers
  attr_accessor :head, :tail

  # @param [Integer] size
  def initialize(size:)
    @numbers = Array.new(size, -1)
    @head = 0
    @tail = 0
  end

  # @param [Inteer] number
  def push(number)
    numbers[tail] = number
    increment_tail
    # nを超えたら、ずらすだけ
    self.tail = 0 if tail == numbers.length
    numbers
  end

  def pop
    numbers[head] = -1
    increment_head
    # headが配列の個数と一緒だとそれはもうhead = 0だから、0の位置に戻しているだけ
    self.head = 0 if head == numbers.length
    numbers
  end

  private

  def increment_tail
    self.tail = tail + 1
  end

  def increment_head
    self.head = head + 1
  end
end

begin
  lines = readlines.map(&:chomp)
  size, = lines[0].split.map(&:to_i)
  queries = lines[1..].map { |line| line.split.map(&:to_i) }
  queue = Queue.new(size: size)

  until queries.empty?
    query = queries.shift
    case query[0]
    when 0
      queue.push(query[1])
    when 1
      queue.pop
    end
  end

  puts queue.numbers
rescue StandardError => e
  p "raise error:", e.message
end