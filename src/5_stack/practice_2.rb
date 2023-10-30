# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  # この配列をスタックのデータ構造とする
  asteroid_stack = []

  asteroids.each do |asteroid|
    # 衝突するパターンだけ、whileで処理する
    # 衝突するパターンが終了するまで、ループする
    while !asteroid_stack.empty? && asteroid.negative? && asteroid_stack.last.positive?
      diff = asteroid + asteroid_stack.last

      if diff.negative? # アステロイドの方がでかい
        asteroid_stack.pop
      elsif diff.positive? # stack.lastの方がでかい
        # アステロイドが消えたことを表したいので、0を使う
        asteroid = 0
      else # 同じ大きさの惑星の時
        asteroid = 0
        asteroid_stack.pop
      end
    end

    asteroid_stack.push(asteroid) if asteroid != 0
  end

  asteroid_stack
end

# asteroids = [5,10,-5]
# Output: [5,10]
# asteroids = [8,-8]
# Output: []
# asteroids = [10,2,-5]
# Output: [10]
# asteroids = [-2,-1,1,2]
# asteroids = [-2,-2,1,-2]
asteroids = [1,-1,-2,-2]
p asteroid_collision(asteroids)