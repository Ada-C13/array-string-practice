# Time Complexity: O(n); time that the process takes will depend on the size of the string;
# Constants are dropped.
# Space Complexity: O(1), because no new structures are created.
def is_palindrome(string)
  i = 0
  string_array = string.downcase.split("")

  string_array.each do |char|
    if ["?", " ", ".", ",", "!", ":", ";"].include?(char)
      string_array.delete(char)
    end
  end

  while i < string_array.length
    if string_array[i] != string_array[-(i + 1)]
      return false
    end
    i += 1
  end

  return true
end

# Time Complexity: O(n^2), because there are two nested loops, both of which have 
# a complexity of O(n) that depends on size of the input.
# Space Complexity: O(1), because no new structures are created.
def longest_prefix(strings)
  longest_prefix = ""
  shortest_string = strings.min_by(&:length)

  shortest_string.length.times do |i|
    strings.length.times do |j|
      if shortest_string[i] != strings[j][i]
        return longest_prefix
      end
    end
    longest_prefix += shortest_string[i]
  end

  return longest_prefix
end

