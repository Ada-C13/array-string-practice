
# Time Complexity: O(n)?
# Space Complexity: O(n) ?
def is_palindrome(string)
  split_string_array = string.downcase.split("")
  words_array = split_string_array.select{|letter| letter[/[a-z]/]}

  reverse_words_array = []
  x = 0
  length = words_array.length
  until words_array[x] == nil
    reverse_words_array << words_array[length -(x+1)]
    x += 1
  end

  return reverse_words_array == words_array ? true : false

end

# Time Complexity: O(n)?
# Space Complexity: 0(n)?
def longest_prefix(strings)
  return "" if strings.empty? == true
  
  longest_prefix = strings[0].chars
  strings.each do |string|
   holder = string.chars
   longest_prefix = holder & longest_prefix
  end

  return longest_prefix.join
  

end

