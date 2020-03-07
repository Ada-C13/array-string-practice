
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  unless string.class == String
    raise ArgumentError, "input is not a string"
  end 

  a = string.split /[^A-Za-z]+/
  b = a.map {|x| x.split //}
  c = b.flatten 

  i = 0 
  j = c.length 
  num = j/2

  num.times do |n|
    temp = []
    temp << c[i]
    temp << c[j-1]
    if temp[0].downcase == temp[1].downcase
      next
    else 
      return false
    end 
    i += 1
    j -= 1
  end 
  
  return true

  raise NotImplementedError, "Not implemented yet"
end

# Time Complexity: O(n^2) or O(n^2+n)
# Space Complexity: O(n)
def longest_prefix(strings)
  # find the smallest length
  min_length = strings[0].length

  strings.length.times do |n|
    if strings[n].length < min_length
      min_length = strings[n].length
    end 
  end 

  output = []
  min_length.times do |n|
    compare = strings.map{|x|x[n]} 
    num = compare.length 
    check_char = compare[0]
    check = compare.count{|char|char == check_char }

    if check == num 
      output << check_char
    else  
      break
    end 

  end

  return output.join
  raise NotImplementedError, "Not implemented yet"
end

