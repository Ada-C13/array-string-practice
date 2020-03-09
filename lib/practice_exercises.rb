
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  return true if string == "" || string.length == 1
  s = string.downcase.split(':').join.split(',').join.delete(' ')
  (s.length)/2.times do |i|
    return false if s[i] != s[-(i+1)]
  end
  return true
end

# Time Complexity: O(n*m), n = strings array length, m = first word length
# Space Complexity: O(m), m = prefix length
def longest_prefix(strings)
  if strings == nil || strings.length == 0
    return prefix
  end

  if strings.first.length == 0
    return prefix
  end

  prefix = ""
  letter_to_check = strings.first[0]
  i = 0
  while i < strings.first.length
    strings.each do |word|
      if i >= word.length || letter_to_check != word[i]
        return prefix
      end
    end

    prefix += letter_to_check
    i += 1
    letter_to_check = strings.first[i]
  end
  return prefix
end