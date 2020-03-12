
# Time Complexity: O(n) -> time depends on how long the string is.
              #string of 3 chars will take less time than one of 100000 chars
# Space Complexity: O(1) -> nothing new being created
def is_palindrome(string)
  i = 0
  array = string.upcase.split('')

  punctuation = %w[. , / \ " ; : ! & ^ # $ @ % ( ) \ ]

  punctuation.each do |i|
    if array.include?(i)
      array.delete(i)
    end
  end

  while i <= array.length
    return false if array[i] != array[-(i+1)]
    i += 1
  end 

  return true
  
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  first_string = strings[0]

  string_length = first_string.length
  x = string_length
  
  strings.each do |string|
    string_length.times do
      if !string.include?(first_string[0..x])
        x -= 1
      end
    end



  end

  

  return first_string[0..x]

end

