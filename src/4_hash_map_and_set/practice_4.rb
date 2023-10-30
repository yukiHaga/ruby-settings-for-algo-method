# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  # # 行と列を入れ替える
  # transposed_grid = grid.transpose
  # matche_count = 0
  # grid.each do |rows|
  #   transposed_grid.each do |colums|
  #     matche_count += 1 if colums == rows
  #   end
  # end

  # matche_count

  ## もっと簡単に書けそう
  # 行列に対してtallyを使うとこうなるの初めて知った
  # irb(main):003:0> grid.transpose.tally
  # => {[3, 1, 2, 2]=>1, [1, 4, 4, 5]=>1, [2, 4, 2, 2]=>2}

  columns = grid.transpose
  grid_hash = grid.tally
  matche_count = 0

  columns.each do |column|
    matche_count += grid_hash[column] if grid_hash[column]
  end

  matche_count
end

# grid = [[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]]
# grid = [[3,2,1],[1,7,6],[2,7,7]]
grid = [[3,1,2,2],[1,4,4,4],[2,4,2,2],[2,5,2,2]]
# output 3
p equal_pairs(grid)
