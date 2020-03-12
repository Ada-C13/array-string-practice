
# Time Complexity: 
# Space Complexity: 
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


# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  first_string = strings.sort_by!(&:length).first
  # 1. "flow"
  i = 0 

  prefix = ""

  # strings = ["flower", "flewrida", "flow"]

  first_string.length.times do |index|
    letter = first_string[index]
    strings.each do |string|
      # 1. flow
      # 2. flewrida
      # 3. flower
      if string[index] != letter
        return prefix
      end
    end
    prefix += letter
  end 
  
  return prefix
  ## want to figure this out laterrrrr
  # strings.each do |string|
  #   string.length.times do 
  #     if string[i] != first_string[i]
  #       puts "#{string[i]}, #{first_string[i]}"
  #       first_string = first_string[0..i]
  #     else
  #       i += 1
  #     end
  #   end 

  #   # puts first_string
  # end 
    
end

# longest_prefix(strings)