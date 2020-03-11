
# Time Complexity: O(n)
# Space Complexity: O(1) - I don't feel confident about this though because of the creation of the comparison array, which I think would double the memory needed.
def is_palindrome(string)
  string = string.downcase.gsub(/[^A-Za-z]/, "").split("")
  comparison = []
  i = 0
  j = -1

  until string[i] == string[j] do
    comparison << (string[i] == string[j])
    i += 1
    j -= 1
  end

  return comparison.include?(false) == false
end

# Time Complexity: O(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  result = ""

  i = 0

  character = strings[0][i]

  while character != nil
    strings.each do |string|
      if string[i] != character
        return result
      end
    end

    result += character
    i += 1
    character = strings[0][i]
  end

  return result
end

