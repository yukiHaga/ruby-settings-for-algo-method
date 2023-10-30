# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
  uniq_nums1, uniq_nums2 = nums1.uniq, nums2.uniq
  [uniq_nums1 - uniq_nums2, uniq_nums2 - uniq_nums1]
  # nums1_hash = nums1.tally
  # nums1_hash.default = 0
  # nums2_hash = nums2.tally
  # nums2_hash.default = 0

  # answers = [[], []]
  # nums1_hash.keys.each do |key|
  #   if nums2_hash[key].zero?
  #     answers[0].push(key)
  #   end
  # end

  # nums2_hash.keys.each do |key|
  #   if nums1_hash[key].zero?
  #     answers[1].push(key)
  #   end
  # end

  # answers
end

# nums1 = [1,2,3]
# nums2 = [2,4,6]

nums1 = [1,2,3,3]
nums2 = [1,1,2,2]
p find_difference(nums1, nums2)
