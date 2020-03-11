
# Time Complexity: O(n)?
# Space Complexity: O(n) ?
def is_palindrome(string)
  split_string_array = string.downcase.split("")
  words_array = split_string_array.select{|letter| letter[/[a-zA-z]/]}

  reverse_words_array = []
  x = 0
  length = words_array.length
  until words_array[x] == nil
    reverse_words_array << words_array[length -(x+1)]
    x += 1
  end

  return reverse_words_array == words_array ? true : false

end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  array_length = strtings.length
  
end

