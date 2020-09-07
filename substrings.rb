def substrings(string, array)
  length = array.length
  output = Hash.new(0)
  i = 0

  while i < length
    if string.downcase.include? "#{array[i]}"
      output[array[i]] += string.downcase.scan(array[i]).count
    end
    i += 1
  end

  return output

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)