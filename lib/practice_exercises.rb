# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  low = 0
  high = string.length - 1

  while low <= high do
    if /\W/ === string[low]
      low += 1
      next
    end

    if /\W/ === string[high]
      high -= 1
      next
    end

    if string[low].downcase == string[high].downcase
      low += 1
      high -= 1
    else
      return false
    end
  end

  return true
end


# Time Complexity: O(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  words = strings.length
  min_characters = (strings.min_by{|string|string.length}).length
  prefix = ""

  min_characters.times do |j|
    letter = strings[0][j]

    words.times do |i|
      return prefix if strings[i][j] != letter
    end

    prefix += letter
  end

  return prefix
end


# Alternative Solution
# Time Complexity: O(n)
# Space Complexity: O(1)
# def is_palindrome(string)
#   low = 0
#   high = string.length - 1

#   while low <= high do
#     if /\W/ === string[low] && /\w/ === string[high]
#       low += 1
#     elsif /\W/ === string[high] && /\w/ === string[low]
#       high -= 1
#     elsif /\W/ === string[low] && /\W/ === string[high]
#       low += 1
#       high -= 1
#     elsif string[low].downcase == string[high].downcase
#       low += 1
#       high -= 1
#     else
#       return false
#     end
#   end

#   return true
# end


#Alternative Solution
# Time Complexity: O(n)
# Space Complexity: O(1)
# def longest_prefix(strings)
#   words = strings.length
#   min_characters = (strings.min_by{|string|string.length}).length
#   index = 0

#   min_characters.times do |j|
#     letter = strings[0][j]

#     words.times do |i|
#       return strings[0][0...index] if strings[i][j] != letter
#     end

#     index += 1
#   end

#   return strings[0][0...index]
# end













