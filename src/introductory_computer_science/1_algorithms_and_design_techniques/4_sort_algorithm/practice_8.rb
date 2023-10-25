# @param [Array<Integer>] node_values
def create_heap(node_values:)
  x = (node_values.length / 2) - 1

  while x >= 0
    node_index = x

    loop do
      parent_node_value = node_values[node_index]
      left_node_value = node_values[2 * node_index + 1]
      right_node_value = node_values[2 * node_index + 2]

      break unless left_node_value || right_node_value
      maximum_node_value = if right_node_value
                             [parent_node_value, left_node_value, right_node_value].max
                           else
                             [parent_node_value, left_node_value].max
                           end
      case maximum_node_value
      when parent_node_value
        break
      when left_node_value
        node_values[node_index], node_values[2 * node_index + 1] = node_values[2 * node_index + 1], node_values[node_index]
        # ノードバリューを入れ替えたことによって、入れ替え先にいる子ノードバリューと大小関係が成立しているかをチェックするために、インデックスを入れ替えている
        node_index = 2 * node_index + 1
      when right_node_value
        node_values[node_index], node_values[2 * node_index + 2] = node_values[2 * node_index + 2], node_values[node_index]
        node_index = 2 * node_index + 2
      end
    end

    x -= 1
  end

  node_values
end

begin
  lines = readlines.map(&:chomp)
  _, node_index = lines[0].split.map(&:to_i)
  node_values = lines[1].split.map(&:to_i)

  (1..(node_values.length - 1)).reverse_each do |i|
    node_values[0..i] = create_heap(node_values: node_values[0..i])
    if i == node_index - 1
      puts node_values.join(" ")
    end
    node_values[0], node_values[i] = node_values[i], node_values[0]
  end

  puts node_values.join(" ")
rescue StandardError => e
  p "raise error:", e.message
end