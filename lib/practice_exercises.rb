
# Time Complexity: O(n), the loop requires n operations depending on the length of the string.
# Space complexity: O(1), the number of varibles tracked does not change regardless of input size.
def is_palindrome(string)
  string.gsub!(/[^a-zA-Z0-9]/, "")
  first_index = 0
  last_index = string.length - 1

	while first_index < last_index
    return false if string[first_index].downcase != string[last_index].downcase
		first_index += 1
    last_index -= 1
  end
  
  return true 
end

# Time Complexity: O(n^2), there is an each loop (dependent on the length of the shortest string) nested within a times loop (dependent on the length of the strings array).
# Space Complexity: O(1), the number of varibles tracked does not change regardless of input size.
def longest_prefix(strings)
  prefix = ""
  shortest_string = strings.min_by(&:length)

  shortest_string.length.times do |index|
    letter = strings[0][index]
    strings.each do |string|
      return prefix if string[index] != letter
    end

    prefix += letter
  end

  return prefix
end

