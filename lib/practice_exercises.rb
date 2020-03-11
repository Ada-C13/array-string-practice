# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  return true if string.length < 2
  
  i = 0
  end_i = string.length - 1
  pattern = /[a-z0-9]/
  
  while i < end_i
    
    i+= 1 until (string[i] == nil || pattern.match(string[i].downcase))
    return false if string[i] == nil

    end_i -= 1 until pattern.match(string[end_i].downcase)

    return false if string[i].downcase != string[end_i].downcase

    i += 1
    end_i -= 1
  end

  return true
end

# Time Complexity: O(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  prefix = ""

  i = 0
  char = strings[0][i]

  while char != nil
    strings.each do |string|
      if string[i] != char
        return prefix
      end
    end

    prefix += char
    i += 1
    char = strings[0][i]
  end
  
  return prefix
end

