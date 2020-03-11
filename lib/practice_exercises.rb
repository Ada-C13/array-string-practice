
# Time Complexity: O(n)
# Space Complexity: O(n), regex results return a new array
def is_palindrome(string)
  processed_string = string.scan(/\w/)

  return false if !(processed_string.length >= 0)

  (processed_string.length/2).times do |x|
    return false if processed_string[0+x].downcase != processed_string[-(1+x)].downcase
  end

  return true
end

# Time Complexity: O(n^2) because nested times loops
# Space Complexity: O(1), no additional data structures used
def longest_prefix(strings)
  leader = strings[-1]

  leader.length.times do |i|
    strings.length-1.times do |j|
      return leader[0,i] if leader[i] != strings[j][i]
    end
  end
  
  return leader
end

