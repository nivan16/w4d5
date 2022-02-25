
def first_anagram?(str1, str2)
  # anagrams = []
  # str1.each_char.with_index do |char, idx|

  # end
  anagrams = str1.split("").permutation.to_a
  anagrams.include?(str2.split(""))
end

def second_anagram?(str1, str2)
  second_word = str2.split("")
  str1.each_char.with_index do |char, idx|
    word_idx = second_word.find_index(char)
    second_word.delete_at(word_idx) if !word_idx.nil?
  end
  return second_word.empty?
end

def third_anagram?(str1, str2)
  return str1.split("").sort == str2.split("").sort
end

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)

  str1.each_char { |char| hash1[char] += 1 }  
  str2.each_char { |char| hash1[char] -= 1 }

  return hash1.values.all?{|value| value == 0 }
end



p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true