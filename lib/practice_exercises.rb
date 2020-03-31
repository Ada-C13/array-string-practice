
# Time Complexity:  O(1)
# Space Complexity: O(n)
#divide the string in half, create a variable called the mid_point(interator)
# set equal to true 
# zero variable equals i 
# while i is less than the mid_point keep going..
# seeing if  string[i]is equal to that same i minus on
#the aaray is now only looking at the index 3 
#[string.length-i-1] will point it to anything before mid_point 
# if when comparing the first have of the string and last they are not the same 
#return false
#however if true to will move to the next to compare
#this is achieved by cutting the aaray in halfddd 
def is_palindrome(string)
    mid_point=string.length/2
    is_palindrome= true
    i=0
    while i<mid_point
        if p string[string.length-i-1]
            is_palindrome=false
        end
        i+=1
    end
    return is_palindrome 
end



# Time Complexity: 
# Space Complexity: ?
def longest_prefix(strings)
  strings_in_common = ""
  #checking if array is emptyh
  if strings.length == 0
    return strings_in_common
  end
  shortest_string = strings.min(){|a, b| a.length <=> b.length}.chars
  i = 0
  while i < shortest_string.length
    letter = shortest_string[i]
    strings.each do |string|
      if letter != string.chars[i]
        return strings_in_common
      end
    end
    strings_in_common += letter
    i += 1
  end
  return strings_in_common
end 
end
