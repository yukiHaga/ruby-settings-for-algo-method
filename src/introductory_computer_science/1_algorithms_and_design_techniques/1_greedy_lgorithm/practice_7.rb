begin
  lines = readlines.map(&:chomp)
  event_count = lines[0].to_i
  event_times = lines[1..].map { |word| word.split.map(&:to_i) }

  sequential_events_count = 0

  # バブルソート
  # これで右端の値でソートしたevent_timesが出来上がる
  (0..(event_count - 1)).each do |i|
    (0..(event_count - (i + 2))).each do |j|
      if event_times[j][1] > event_times[j + 1][1]
        event_times[j], event_times[j + 1] = event_times[j + 1], event_times[j]
      end
    end
  end

  event_times.reduce do |result, event_time|
    if result[1] <= event_time[0]
      sequential_events_count += 1
      result = event_time
    end
    result
  end

  puts sequential_events_count + 1
rescue StandardError => e
  p "raise: error", e
end
