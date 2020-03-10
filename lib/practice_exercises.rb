# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  string_array = string.split("")
  my_char_array = string_array.select do |char|
    /[a-zA-Z]/.match char
  end

  first_index = 0
  last_index = my_char_array.length - 1
  while first_index < last_index
    if my_char_array[first_index].upcase == my_char_array[last_index].upcase
      first_index += 1
      last_index -= 1
    else
      return false
    end
  end
  return true
end

# Time Complexity: O(n^2)
# Space Complexity: O(n)

def longest_prefix(strings)
  longest_common_prefix = ""

  if strings == nil || strings.length == 0
    return longest_common_prefix
  end

  strings[0].each_char.with_index do |char, i|
    strings.each do |word|
      if char != word[i] #second word in array
        return longest_common_prefix
      end
    end
    longest_common_prefix << char
    i += 1
  end

  return longest_common_prefix
end


