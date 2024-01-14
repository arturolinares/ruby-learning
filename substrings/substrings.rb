def substrings(string, dictionary)
  tally = Hash.new(0)
  dictionary.each do |word|
    found = 0
    found = string.downcase.scan(word).count if string.downcase.include?(word)
    tally[word] += found if found.positive?
  end
  tally
end

dict = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings("Howdy partner, sit down! How's it going?", dict)
