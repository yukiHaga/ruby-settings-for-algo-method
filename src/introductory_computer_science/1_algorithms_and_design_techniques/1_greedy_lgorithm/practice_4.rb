begin
  lines = readlines.map(&:chomp)
  luggage_weights = lines[1].split.map(&:to_i)
  box_capacity_limits = lines[2].split.map(&:to_i)

  package_count = 0

  luggage_weights.sort.reverse_each do |luggage_weight|
    box_capacity_limits.each_with_index do |box_capacity_limit, i|
      if luggage_weight <= box_capacity_limit
        package_count += 1
        box_capacity_limits.delete_at(i)
        break
      end
    end
  end

  puts package_count
rescue StandardError => e
  p "raise: error", e
end
