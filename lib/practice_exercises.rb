
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  word_array = string.gsub(/[[:punct:]]/, "").delete(' ')
  reversed_arrary = []
  last_index = word_array.length
  until 0 > last_index
      reversed_arrary << word_array[last_index]
      last_index -= 1
    end

  return word_array.downcase == reversed_arrary.join.downcase 
end

# Time Complexity: ?
# Space Complexity: ?

strings = ['flow', 'flower', 'flake']

def longest_prefix(strings)
  prefix = ""
  strings[0].chars.each_with_index do |letter, index| # looping through flow
    strings.each_with_index do |word, i| # looping through flow, flower, flake
      next if i == 0
      if word[index] != letter
        return prefix  
      end
    end
    prefix += letter
  end 
  return prefix
end