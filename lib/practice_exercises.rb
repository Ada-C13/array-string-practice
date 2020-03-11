
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  alph_str = string.downcase.gsub(/[^a-z\w]/,'') #substitute any non-letter or whitespace with nothing
  alph_str.length/2.times do |index|
    if alph_str[index] != alph_str[-1 - index]
      return false
    end
    return true
  end

end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  return strings [0] if strings.length == 1

  common_prefix = ""
  index = 0

  until strings[0][index] != strings[1][index] || (strings[0][index] == nil && strings[1][index] == nil)
    common_prefix += strings[0][index]
    index += 1
  end

  strings.each do |string|
    return "" if common_prefix[0] != string[0]

    common_prefix.length.times do |index|
      if common_prefix[index] != string[index]
        common_prefix = common_prefix[0...index]
        break
      end
    end 
  end

  return common_prefix
end
