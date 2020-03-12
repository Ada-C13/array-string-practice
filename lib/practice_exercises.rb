
# Time Complexity: O(n)
# Space Complexity: O(n)
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

# Time Complexity: O(n^2)
# Space Complexity: O(n)
def longest_prefix(strings)
  prefix = ""
  short_word = strings.min{|a,b| a.size <=> b.size}
  short_word = short_word.length - 1

  for i in 0..short_word
    char = strings[0][i]
    strings.each do |word|
      if char != word[i]
        return prefix
      end
    end
    prefix += char
  end

  return prefix

  raise NotImplementedError, "Not implemented yet"
end