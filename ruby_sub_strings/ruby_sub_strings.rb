# Ruby sub-string exercise to create a method #substring that will take an
# an argument and substrings, will return a hash listing and count

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test_string = "Howdy partner, sit down! How's it going?"

def substring(string, dictionary)
    string = string.downcase
    output = dictionary.reduce(Hash.new(0)) do |count, word|
        if string.include?(word.to_s.downcase)
            count[word.downcase] += string.scan(word).length
            count
        else
            count
        end
    end
    p output
end

substring(test_string, dictionary)