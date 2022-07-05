dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i",
  "low", "own", "part", "partner", "sit"]

def substrings(string, dictionary)
  words = string.split
  results = []
  words.each do |word|
    dictionary.each do |substring|
      results += word.scan(substring)
    end
  end
  results.tally
end

puts "Test 1"
puts substrings("below", dictionary)
puts "test 2"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)