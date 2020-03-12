
# Time Complexity: is O(^mg)this_code_is_ridiculous an option? O(n)
# Space Complexity: O(n^3)
def is_palindrome(string)
  phrase = string.downcase
  split_array = phrase.split(//)
  pattern = /[a-z]/
  phrase_array = []
  split_array.each do |letter|
    if pattern.match(letter)
      phrase_array << letter
    end 
  end 

  i = 0
  j = phrase_array.length - 1
  temp_array = phrase_array.clone
  
    while i < j 
      temp = temp_array[i]
      temp_array[i] = temp_array[j]
      temp_array[j] = temp
      i += 1
      j -= 1
    end
  

  i = 0
  phrase_array.each do 
    if phrase_array[i] != temp_array[i]
      return false
    else 
      i += 1
    end 
  end 
  return true 

end


# Time Complexity: ? O(n^2)
# Space Complexity: ? O(n)
def longest_prefix(strings)
  first_string = strings.sort_by!(&:length).first
  i = 0 
  prefix = ""

  first_string.length.times do |index|
    letter = first_string[index]
    strings.each do |string|
      if string[index] != letter
        return prefix
      end
    end
    prefix += letter
  end 
  
  return prefix

end

