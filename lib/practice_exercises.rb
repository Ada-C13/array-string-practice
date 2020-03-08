# Time Complexity: O(n), because there are two consequtive loops (one after another).
# Space Complexity: O(n), since new array has been created as a result of calling a split method an a string.
def is_palindrome(string)
  raise ArgumentError.new("String cannot be nil") if string == nil

  if string.length == 0
    return true
  end

  string_as_array = string.split(" ")
  pattern = /[A-Za-z0-9]+/
  formatted_input = ""

  string_as_array.each do |word|
    validation = word.match(pattern)
    formatted_input << validation[0].downcase
  end

  first = 0
  last = formatted_input.length - 1

  while first < last
    if formatted_input[first] != formatted_input[last]
      return false
    end

    first += 1
    last -= 1
  end

  return true
end

# Time Complexity: O(n^2), because there are two nested loops, and both of them depend on the array and string lengths.
# Space Complexity: O(1)
def longest_prefix(strings)
  first_word = strings[0]

  prefix = ""

  first_word.length.times do |i|
    strings.each do |word|
      if first_word[i] != word[i]
        return prefix
      end
    end

    prefix << first_word[i]
  end

  return prefix
end
