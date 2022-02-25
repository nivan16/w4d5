
def my_min(nums)
  # min = -1
  # nums.each do |num|
  #   min = num if nums.all?{|ele| num <= ele}
  # end
  # min

  min = nil
  nums.each do |num| 
    if min == nil
      min = num
    else
      min = num if num < min
    end
  end
  return min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_contiguous_subsum(nums)
  # subs = []
  # nums.each_with_index do |num1, idx1|
  #   subs << [num1]
  #   nums.each_with_index do |num2, idx2|
  #     subs << nums[idx1..idx2] if idx2 > idx1
  #   end
  # end
  
  # sum = -100
  # (0..subs.length-1).each do |i|
  #   sum = subs[i].sum if subs[i].sum > sum
  # end
  # sum
  # if nums.all? {|num| num < 0}
  #   highest_number = nums.inject do |acc, num|
  #     if acc > num
  #       acc
  #     else
  #       num
  #     end
  #   end
  #   return highest_number
  # end

  current_sum = 0
  max_sum = nums.sum

  nums.each_with_index do |num, idx|
    current_sum += num
    max_sum = current_sum if current_sum > max_sum
    if current_sum < 0
      current_sum = 0
    end
  end

  max_sum
end
#max_sum = 5
#c_sum = -1



list = [5, 3, -7]
p largest_contiguous_subsum(list)