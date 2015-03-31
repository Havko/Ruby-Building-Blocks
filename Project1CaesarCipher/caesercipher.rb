key = ('a'..'z').to_a
value = (1..26).to_a
cipher = Hash[key.zip(value)] 
puts "Enter your Message to be ciphered"
message = gets.chomp
puts "What shift factor would you like to use?(1-26)"
shift = gets.chomp.to_i
shifth = cipher.invert
messarray = message.split(//)
cipherval = messarray.map { |letter| cipher[letter]}
puts cipherval
cipherval.compact!.map! { |(val)| shifth[val+shift]} 
print cipherval.join()




