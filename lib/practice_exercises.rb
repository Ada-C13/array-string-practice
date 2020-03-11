
# Time Complexity: O(n) -> It runs (n = string.lenght) times depends on the string length. 
# Space Complexity: O(1) -> Constant variables.
def is_palindrome(string)
  # raise NotImplementedError, "Not implemented yet"
  string = string.downcase
  string = string.gsub(/[\s,:;]/ ,"")
    i = 0
    j = string.length - 1
    while i < j
      if string[i] == string[j]
        i += 1
        j -= 1
      else
        return false
      end
  end
  return true
end

# Time Complexity: ?
# Space Complexity: ?

def shortest_word(strings)
  shortest = strings[0]
  strings.each do |word|
    if word.length < shortest.length
      shortest = word
    end
  end
  return shortest
end

def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  first_word = shortest_word(strings)
  strings.delete(first_word)

  longest_prefix = ""
  
  if strings.empty?
    longest_prefix = first_word
    return longest_prefix
  end

  first_word.each_char.with_index do |letter, i|
    strings.each do |word|
      if word[i] != letter
        return longest_prefix
      end
    end
    longest_prefix += letter
  end
end