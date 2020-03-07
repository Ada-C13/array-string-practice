
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  #check for edge case 
  if string.length <= 1
    return true
  else
    #clean up the string for comparisons
    string = string.downcase.gsub(/[^a-z^A-Z]/, "")
    first = 0
    last = string.length - 1
    until first >= last
      #compare characters
      return false unless string[first] == string[last]
      first += 1
      last -=1
    end
    return true
  end
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  prefix = ""
  count = 0
  first_string = strings[0]

  (strings.length - 1).times do |i|
    comparing_string = strings[i + 1]
    first_string.length.times do |j|
      if first_string[j] == comparing_string[j]
        count = j unless count > j
      elsif j == 0
        return ""
      else
        count = j - 1
        break
      end
    end
  end
  prefix = strings[0][0..count]
end