# @param [Array<Array<Integer>>] travel_order_points
# return [Float]
def calc_minimum_travel_distance(travel_order_points)
  minimum_travel_distance = 0
  travel_order_points.reduce do |result, vertex|
    distance = calc_two_points_distance(result, vertex)
    minimum_travel_distance += distance
    result = vertex
    result
  end
  minimum_travel_distance
end

# @param [Array<Integer>] point
# @param [Array<Integer>] another_point
# @return [Integer]
def calc_two_points_distance(point, another_point)
  Math.sqrt((point[0] - another_point[0])**2 + (point[1] - another_point[1])**2)
end

begin
  lines = readlines.map(&:chomp)
  # vertex_count = lines.first.to_i
  points = lines[1..].map { |word| word.split.map(&:to_i) }
  travel_order_points = [[0, 0]]
  reference_point = [0, 0]

  loop do
    minimum_distance_point_with_index = points.each_with_index.reduce do |result, (vertex, i)|
      result_distance =  Math.sqrt((reference_point[0] - result[0][0])**2 + (reference_point[1] - result[0][1])**2)

      vertex_distance =  Math.sqrt((reference_point[0] - vertex[0])**2 + (reference_point[1] - vertex[1])**2)
      vertex_distance < result_distance && result = [vertex, i]
      result
    end

    reference_point = minimum_distance_point_with_index[0]
    travel_order_points.push(reference_point)
    points.delete_at(minimum_distance_point_with_index[1] - 1)

    break if points.empty?
  end

  p travel_order_points

  # 最後に原点に戻ってくるから、[0, 0]を追加しておく
  travel_order_points.push([0, 0])
  minimum_travel_distance = calc_minimum_travel_distance(travel_order_points)
  puts minimum_travel_distance
rescue StandardError => e
  p "raise: error", e
end
