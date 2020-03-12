# Time Complexity: linear
# Space Complexity: linear

def is_palindrome(string)
  # remove white spaces
  string = string.gsub(/\s+/, "").downcase
  # reverse string
  reversed = ""
  i = string.length - 1
  while i > -1
    reversed += string[i]
    i -= 1
  end
  return reversed == string
end


# Time Complexity: linear
# Space Complexity: linear
def longest_prefix(strings)
  # get min
  min = strings[0].length
  strings.each do |string|
    if string.length < min
      min = string.length
    end
  end
  # create longest prefix
  i = 0
  longest = ""
  min.times do
    temp = []
    strings.each do |string|
      temp << string[i]
    end
    if temp.uniq.length == 1
      longest += temp[0]
      i += 1
    end
  end
  return longest
end