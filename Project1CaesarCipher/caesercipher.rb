key = ('a'..'z').to_a
value = (1..26).to_a
cipher = Hash[key.zip(value)] #Combines keys and values 
puts "Enter your Message to be ciphered"
message = gets.chomp.downcase
puts "What shift factor would you like to use?(1-26)"
shift = gets.chomp.to_i
shifth = cipher.invert
messarray = message.split(//) #Turns message into an array
cipherval = messarray.map { |letter| cipher[letter]} #Returns a number into an array for each letter in the message
cipherval.compact!
cipherval.map! { |(val)| shifth[val+shift]} #Returns the message based off the keys assigned to each letter in the message + the user selected position
print cipherval.join()




