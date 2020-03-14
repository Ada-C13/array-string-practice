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



# Time Complexity: O(n*m) (array length * string length) ??
# Space Complexity: 0(1) If no additional arrays or variables. ??

# Big Oh Notation is still confusing. 
# I struggled with this problem. I have a hard time keeping things simple. 
# I saw a classmates solution and it was consise! 

def longest_prefix(strings)
  if strings.length == 1
    return strings
  end

  prefix = ""
  str_index = 0


  until (strings[0][str_index] != strings[1][str_index]) || (strings[0][str_index] == nil && strings[1][str_index] == nil)
    prefix += strings[0][str_index]
    str_index += 1
  end

  strings.each do |string|
  return "" if prefix[0] != string[0]

    prefix.length.times do |i|
      if prefix[i] != string[i]
        prefix = prefix[0...i]
        break
      end
    end
  end
  return prefix
end



