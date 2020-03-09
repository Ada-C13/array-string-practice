# Time Complexity: O(n) - two loops are run, but they are not nested so it is O(2n) which drops the 2 and becomes O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  return true if string == ""

  new_string = ""
  length = string.length
  valid_characters = /\w/
  length.times do |i|
    if string[i].match?(valid_characters)
      new_string += string[i]
    end
  end

  length = new_string.length
  new_string = new_string.downcase
  length.times do |i|
    first = new_string[i]
    last = new_string[length-1]
    return false if first != last
    length -= 1
  end

  return true
end

# Time Complexity: O(n^2) - there is a nested loop so this is O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  match  = ""
  shortest = strings.min_by(&:length).length

  shortest.times do |i|
    letter = strings[0][i]
    strings.each do |word|
      word[i] == letter ? next : (return match)
    end
    match += letter
  end

  return match
end