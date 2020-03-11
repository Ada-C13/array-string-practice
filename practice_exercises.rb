# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  string = string.downcase
  string_array = string.chars
  
  palindrome_to_validate = []
  pattern = /^[a-z]$/

  string_array.each do |character|
    if pattern.match?(character)
      palindrome_to_validate << character
    end
  end

  first_index = 0
  last_index = (palindrome_to_validate.length) - 1
  copy = palindrome_to_validate.clone

  while first_index < last_index
    temp = palindrome_to_validate[first_index]
    palindrome_to_validate[first_index] = palindrome_to_validate[last_index]
    palindrome_to_validate[last_index] = temp
    first_index += 1
    last_index -= 1
  end

  if copy.nil? && palindrome_to_validate.nil?
    return true
  elsif copy.nil? || palindrome_to_validate.nil?
    return false
  else
    differences = 0
    index = 0

    copy.each do
      if copy[index] != palindrome_to_validate[index]
        differences += 1 
        index += 1
      else
        index += 1
      end
    end
  end

  if differences > 0
    return false
  else
    return true
  end
end

# Time Complexity: O(n)
# Space Complexity: O(n)
def longest_prefix(strings)
  prefix = ""
  start = strings[0]
  
  (start.length).times do |index|
    if strings.all?{|word| word[index] == start[index]}
      print start[index]
      prefix += start[index]
    else
      break
    end
  end
  return prefix
end
