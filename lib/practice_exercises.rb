
# Time Complexity: O(n)
# Space Complexity: 0(1)
def is_palindrome(string)
  string = string.downcase
  if string.length == 1 || string == ""
    return true
  elsif string.length == 0 || string == nil
    raise StandardError.new ("Not a Palindrome")
  end
  i = string[0]
  j = string[-1]
  until i == j
    if string[i] == string[j]
      i += 1
      j -= -1
    else 
      return false
    end
    return true
  end
  return true
end

# Time Complexity: O(NM log M)
# Space Complexity: O(1)
# vertical scanning method:
# https://medium.com/@d_dchris/10-methods-to-solve-the-longest-common-prefix-problem-using-python-leetcode-14-a87bb3eb0f3a
def longest_prefix(strings)
  first_word = strings[0]
  return first_word if !strings[1]
  
  index = 0
  status = true
  while status == true
    strings[1..-1].each do |letter|
      if letter[index] != first_word[index] || !first_word[index]
        status = false
      end
    end
    index += 1 if status
  end
  return first_word[0...index]
end


