require 'pry'
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  array = string.gsub((/(?i)[^a-z]/),"").downcase.chars
  array_length = array.length - 1
  
  array.each_with_index do |letter,index|
    return false if letter != array[array_length - index]
  end

  return true
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  temp = strings[0].chars
  
  strings.each_with_index do |value, i|
    value.length.times do |i|
      if value[i] != temp[i]
        temp[i] = nil
      end
    end
  end
  
  nil_location = temp.index(nil) || temp.length
  return temp.take(nil_location).join
end