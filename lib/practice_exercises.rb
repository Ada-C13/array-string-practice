
# Time Complexity: O(n)
# Space Complexity: 
def is_palindrome(string)
  array = []
  string = string.upcase
  array = string.scan /[a-zA-Z]/
  half = array.length / 2
  back_half = []
  half.times {back_half << array.pop}
  if array.length != back_half.length
    array.pop
  end

  if string.length == 1 || string == ""
    return true
  elsif array == back_half
    return true
  else
    return false
  end

  raise NotImplementedError, "Not implemented yet"
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  letters = [] 
  # strings.map { |word| letters << word.chars() }

  prefix = ""
  
  for i in 0..5
    char = strings[0][i]
    strings.each do |word|
      if char != word[i]
        return prefix
      end
    end
    prefix += char
    
  end



  return prefix

  # raise NotImplementedError, "Not implemented yet"
end