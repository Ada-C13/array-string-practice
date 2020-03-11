
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  list = []

  c_string = string.gsub(/[^a-zA-Z]/, "").downcase
  index = c_string.length - 1

  c_string.each_char do |letter|
    if letter == c_string[index]
      index -= 1
    else 
      list<< 1
      index -= 1
    end
    if index == (c_string.length)/2
      if 
        list == [] 
        return true
      else 
        return false
      end
    end
  end
  return true
end

# Time Complexity: O(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  return '' if strings.empty? 
  index = 0
  min = strings.min_by{|a| a.size}
  longest_prefix = ''
    while index != min.length
      strings.each do |string|
          if min[index] != string[index]
            return longest_prefix
          end
        end
        longest_prefix += min[index]
        index +=1
    end
  return longest_prefix
end

