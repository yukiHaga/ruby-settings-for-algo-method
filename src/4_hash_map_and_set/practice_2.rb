# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  # arr_hash = arr.tally
  # arr_hash.values == arr_hash.values.uniq

  # uniq! は削除を破壊的に行い、削除が行われた場合は self を、そうでなければnil を返します。
  # つまり、ユニークじゃない配列に対してuniq!を実行すると要素が破壊的に削除されるから、selfが返ってくるのか
  # 逆にuniq!をユニークな配列に使うと、消す要素がないから、nilが帰ってくる
  # つまり、nilが帰ってくれば元々ユニークってことか
  !arr.tally.values.uniq!
end
