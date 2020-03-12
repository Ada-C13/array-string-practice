require 'pry'
# Time Complexity: 0(n)
# Space Complexity: 0(n)
def is_palindrome(string)

  string.upcase!
  # this only allows alphabetic characters
  string.gsub!(/[^A-Z]/, "")

  str_array = string.chars

  index = str_array.length - 1
  reversed = []

  while index >= 0
   reversed << str_array[index]
    index -= 1
  end

  if reversed == str_array
    return true
  else 
    return false 
  end

end



# Time Complexity: ?
# Space Complexity: ?


# Input: strings = ["flower","flow","flight"]
# Output: "fl"

def longest_prefix(strings)
  prefix = ""

  array_index = 0
  str_index = 0
  longest_word = 0

  
  strings.each do |string|
    if string.length > longest_word
      longest_word = string.length
    end
  end

  longest_word.times do  
    condition_one = (strings[array_index][str_index] == strings[array_index + 1][str_index])
   
    condition_two = (strings[array_index][str_index] == strings[array_index + 2][str_index])
   
    if condition_one && condition_two
    prefix << strings[array_index][str_index]
    end
    str_index += 1

  end
  return prefix
end

