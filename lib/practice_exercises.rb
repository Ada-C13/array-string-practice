
# Time Complexity: O(n) b/c I have to iterate throught each element in the array
# Space Complexity: O(n) b/c I cloned the array
def is_palindrome(string)
  # remove spaces and symbols and change all the letter to lowercase, then split to array
  original = string.gsub(/\W/, "").downcase.split("")
  switch = original.dup

  first_index = 0
  last_index = switch.length - 1

  until first_index == switch.length / 2
    temp = switch[first_index]
    switch[first_index] = switch[last_index]
    switch[last_index] = temp
    first_index += 1
    last_index -= 1 
  end
  
  original.length.times do |time|
    return false if original[time] != switch[time]
  end
  return true
end



# Time Complexity: O(n squared) b/c there are two nested loops in these method 
# Space Complexity: O(1)
def longest_prefix(strings) # "ant" , "an", "anna", "annita"
  prefix = ""
  shortest = strings.min_by { |x| x.length } # "an"

  shortest.length.times do |time|
    if strings.all? {|item| item[time] == shortest[time]}
      prefix += shortest[time]
    else
      return prefix
    end
  end
  return prefix
end
