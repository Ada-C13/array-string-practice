# Time Complexity: 0(n)?
# Space Complexity: 0(n)?
def is_palindrome(string)
  string_split = string.upcase.split('')
  array_letters = string_split.select { |char| /[A-Z]/.match char }

  reverse = []
  i = array_letters.length
  while i != 0 do
    reverse << array_letters[i - 1]
    i -= 1
  end

  if reverse == array_letters
    return true
  elsif reverse != array_letters
    return false
  end
end

# # Time Complexity: n^2 ?
# # Space Complexity: O(1) ?
def longest_prefix(strings)
  first_string = strings[0]
  prefix = ""
  first_string.each_char.with_index do |char, i|
    match = 1
    strings.each do |string|
      if char != string[i]
        match = 0  
      end
    end
    if match == 1
      prefix << char
    elsif match == 0
      break
    end
  end
  return prefix
end
