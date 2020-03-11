
# Time Complexity: O(n) one loop based on an array length.
# Space Complexity: O(n) 3n but we drop the constant. I made 3 new arrays from one string.
def is_palindrome(string)

  concate_array = string.downcase.split("")
  backwards = ""
  concate_array_no_punc = ""

  concate_array.length.times do |i|
    if [":",","," "].include?(concate_array[-1-i])
      nil 
    else  
      backwards += concate_array[-1-i]
    end

    if [":",","," "].include?(concate_array[i])
      nil 
    else  
      concate_array_no_punc += concate_array[i]
    end
  end

  if backwards == concate_array_no_punc
    return true
  else 
    return false
  end
end

# Time Complexity: O(n^2) two nested arrays each dependent on the size of the array
# Space Complexity: O(1) I only deal with the one array. 

def longest_prefix(strings)
  word_array = strings[0].split("")
  length = strings.length

  prefix = ""

  word_array.each_with_index do |letter,letter_index|
    count_words_with_letter = 0

    (length - 1).times do |i|
      if (strings[i+1].split(""))[letter_index] == letter 
        count_words_with_letter += 1
      else
        return prefix
      end
    end

    if count_words_with_letter = length-1
      prefix += letter
    end
  end

  return prefix
end

