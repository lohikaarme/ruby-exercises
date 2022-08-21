# Ruby sub-string exercise to create a method #substring that will take an
# an argument and substrings, will return a hash listing and count

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test_string = "Howdy partner, sit down! How's it going?"

def substring(string, dictionary)
    dictionary.each do |word|
        p word if string.include?(word)
    end

end

substring(test_string, dictionary)