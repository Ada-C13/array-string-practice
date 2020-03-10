
# Time Complexity: o(n)
# Space Complexity: o(n)
def is_palindrome(string)
  string_array = string.split("") 
  alpha_only = []
  alpha_copy = []
  pattern = /^[A-Za-z]+$/
  string_array.each do |char|
    if char.match?(pattern)
      alpha_only << char.downcase 
      alpha_copy << char.downcase
    end 
  end 
  length = alpha_only.length
  (length/2).times do |index|
    temp = alpha_only[index]
    alpha_only[index] = alpha_only[length - 1 - index]
    alpha_only[length - 1 - index] = temp
  end 
  return alpha_only.join() == alpha_copy.join()
end

# Time Complexity: o(n^2)
# Space Complexity: o(1)
def longest_prefix(strings)
  index = 0 
  prefix = ""
  all_true = false 
  st = strings.min_by(&:length) 
  st.split("").each do |char| 
    strings.each do |string| #string.split.each do char???
      if string.split("")[index] == char
        all_true = true 
      else
        all_true = false
      end
    end

    if all_true == false 
      return prefix
    end 
    if all_true == true
      prefix += char
    end
    index += 1
  end 
  return prefix
end

