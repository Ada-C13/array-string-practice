
# Time Complexity: O(n) => Because it depends on the input.
# From my understanding, the split method also takes O(n). In conclusion, since it drops constant 2, it is O(n)

# Space Complexity: O(n) => Because I created a new array to assign the split string
def is_palindrome(string)

  return true if string.empty?

  string = string.downcase().gsub(/[^a-z]/, "") 
  array = string.split("")

  i = 0 
  j = array.length - 1

  while i < j
    if array[i] != array[j]
      return false
    end 
    i += 1 
    j -= 1
  end 

  return true
end


# Reference: https://stackoverflow.com/questions/23896399/difference-between-omn-and-omn/23896477

# Time Complexity: O(n^2) => Because it depends on the input size and it is a nested loop, but since 2 input sizes are different, it could be O(mn)?
# Space Complexity: O(1)

# Solution 1 (using time loop)
def longest_prefix(strings) 

  word_len = strings[0].length

  prefix = ""

  word_len.times do |i|
    pointer = strings[0][i]
    
    strings.length.times do |j|
      if pointer != strings[j][i]
        return prefix 
      end 
    end 

    # After escaping from the iterator, update 'prefix'
    prefix += pointer
  end 
  return prefix
end 


# # Solution 2 (using while)
# def longest_prefix(strings) # strings = ["flower","flow","flight"]

#   word_len = strings[0].length

#   prefix = ""

#   i = 0
#   while i < word_len
#     pointer = strings[0][i]
    
#     j = 0
#     while j < strings.length
#       if pointer != strings[j][i]
#         return prefix 
#       end 
#       j += 1
#     end 

#     i += 1
#     prefix += pointer
#   end 

#   return prefix
# end 