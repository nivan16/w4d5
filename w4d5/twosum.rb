def two_sum?(arr, target_sum)
    # your code here...
end
def bad_two_sum?(arr, target_sum)
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end
  return false
end #O(n^2)

def okay_two_sum?(arr, target_sum)
  sorted = arr.sort

  i = sorted.length - 1

  while i >= 0
    last = sorted.pop
    found = bsearch(sorted, target_sum-last)

    return found if found
    i -= 1
  end
  # sorted.each_with_index do |num, idx|
  #   new_sorted = sorted[0...idx] + sorted[idx+1..-1]
  #   found = bsearch(new_sorted, target_sum-num)
  #   return found if found == true
  # end
  false
end

def bsearch(arr, target)
  mid = arr.length/2
  return true if arr[mid] == target
  return false if arr[mid].nil?
  if arr[mid] > target
    new_arr = arr[0...mid]
    bsearch(new_arr, target)
  else
    new_arr = arr[mid+1..-1]
    bsearch(new_arr, target)
  end
  
end


arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false