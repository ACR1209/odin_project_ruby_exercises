def substrings(value, dictionary)
  value_as_array = value.downcase.split
  res = { }

  value_as_array.each{|word|
      dictionary.each{ |dict|
        if word.include?(dict)
          res[dict] = res.fetch(dict, 0) + 1
        end
      }

  }
  res
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
pp substrings("below", dictionary)
pp substrings("Howdy partner, sit down! How's it going?", dictionary)
