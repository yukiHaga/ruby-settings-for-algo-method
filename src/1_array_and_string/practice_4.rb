# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  plantable_count = 0

  if flowerbed.length >= 3
    (0..flowerbed.length - 3).each do |i|
      if i.zero? && flowerbed[0].zero? && flowerbed[1].zero?
        plantable_count += 1
        flowerbed[0] = 1
      end

      if flowerbed[i].zero? && flowerbed[i + 1].zero? && flowerbed[i + 2].zero?
        flowerbed[i + 1] = 1
        plantable_count += 1
      end

      if i == flowerbed.length - 3 && flowerbed[-1].zero? && flowerbed[-2].zero?
        flowerbed[-1] = 1
        plantable_count += 1
      end
    end
  elsif flowerbed.length == 2
    if flowerbed[0].zero? && flowerbed[1].zero?
      flowerbed[0] = 1
      plantable_count += 1
    end
  elsif flowerbed.length == 1
    if flowerbed[0].zero?
      flowerbed[0] = 1
      plantable_count += 1
    end
  end

  plantable_count >= n
end

# flowerbed = [1,0,0,0,1]
# n = 1
# flowerbed = [1,0,0,0,1]
# n = 2
# flowerbed = [1,0,0,0,0,1]
# n = 2

flowerbed = [0,0,0]
n = 2

p can_place_flowers(flowerbed, n)
