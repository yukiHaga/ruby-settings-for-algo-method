# @param {Integer[]} spells
# @param {Integer[]} potions
# @param {Integer} success
# @return {Integer[]}
def successful_pairs(spells, potions, success)
  potions_last_index = potions.length - 1

  # 2分探索を使うことで、わざわざ全数が特定の数より大きいかをチェックせずに済んだ
  # countだと、全数をチェックしないといけない
  # 末尾だけsuccess以上のパターンも網羅しないと
  spells.map do |spell|
    spell_potions = potions.map { |potion| potion * spell }
    target_index = spell_potions.sort.bsearch_index { |spell_potions| spell_potions >= success } || potions_last_index
    (potions_last_index - target_index).zero? ? 0 : potions_last_index - target_index + 1
  end
end

# spells = [5,1,3]
# potions = [1,2,3,4,5]
# success = 7
# spells = [3,1,2]
# potions = [8,5,8]
# success = 16
spells = [1,2,3,4,5,6,7]
potions = [1,2,3,4,5,6,7]
success = 25
p successful_pairs(spells, potions, success)
