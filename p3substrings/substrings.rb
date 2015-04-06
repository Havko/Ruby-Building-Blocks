def substrings (word, dictionary)
	array = word.split(/\W+/)
	
	puts array.find {|e| e =~ /#{dictionary}/ } 
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
     


substrings("Howdy partner, sit down! How's it going?", dictionary)