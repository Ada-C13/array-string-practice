# Time Complexity: O(n)
# Space Complexity: O(n)

def is_palindrome(string)

  # handle empty case
  if string.length == 0
    return true
  end

  # format string: downcase and remove anything that's not an alphabetical charachter
  formatted_string = string.downcase.gsub(/[^A-Za-z]/, '') # yay regex!

  # make copy 
  formatted_string_copy = formatted_string.clone # allocates new memory 

  # perform reverse algorithim
  i = 0
  j = formatted_string_copy.length - 1
  while i < j
    formatted_string_copy[i], formatted_string_copy[j] = formatted_string_copy[j], formatted_string_copy[i] # swap values using ruby syntax
    i += 1
    j -= 1
  end 

  # compare formatted strings 
  if formatted_string == formatted_string_copy
    return true
  else 
    return false
  end 
end 

# Time Complexity: O(n)
# Space Complexity: O(n)
def longest_prefix(strings)

  # ASSUMPTIONS: prefixes depend on length of string, I know this isn't a correct assumption but I couldn't figure out the logic to make this method completely work...
 
  # arrange strings in ascending order based on length 
  sorted_strings = strings.sort_by { |string| string.length } # allocates new memory 

  i = 0 # index of smallest string in array 
  j = sorted_strings.length - 1 # index of longest string in array 
  k = 0 # counter variable 
  prefix = "" # set prefix to an empty string 

  # compare strings
  sorted_strings[i].length.times do 
    if sorted_strings[i][k] == sorted_strings[j][k]
      prefix = prefix + "#{sorted_strings[i][k]}"
    end 
    k += 1
  end

  return prefix 
  
end