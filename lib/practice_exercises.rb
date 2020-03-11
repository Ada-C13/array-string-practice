
def reverser(string)
  first_index = 0
  last_index = string.length - 1
  while first_index < last_index
    string[first_index], string[last_index] = string[last_index], string[first_index]
    first_index += 1
    last_index -= 1
  end
  return string
end

# Time Complexity: O(n) because we go through the length of the array for comparison.
# Space Complexity: O(n) because we create a copy of the string to compare it to.
def is_palindrome(string)
  joined_str = string.gsub(/[^0-9a-z]/i, '').downcase
  reverse_str = reverser(joined_str.clone)
  difference_count = 0
  joined_str.length.times do |i|
    difference_count += 1 if joined_str[i] != reverse_str[i]
  end

  if difference_count != 0
    return false
  else
    return true
  end

end


# Time Complexity: O(n) we will be itterating through the array one or more times.
# Space Complexity: O(1) because we are not making a new array.
def longest_prefix(strings)
  template = strings[0]
  i = 0
  
  until template[i].nil? do
    comparison_result = true
    strings[1..].each do |word|
       
      if word[i] != template[i]
        comparison_result = false
        break
      end 

    end

    if comparison_result
      i += 1
    else 
      break
    end
  end
  return template[0, i]
end


