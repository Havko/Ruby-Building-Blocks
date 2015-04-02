ABC = ("a".."z").to_a #Creates an array of the Alphabet
CHARS = "a-zA-Z"
puts "Enter the message to be encrypted"
str = gets.chomp
puts "enter the shift factor(1-26)"
shift = gets.chomp.to_i
lkey = ABC.rotate(shift).join
key = lkey + lkey.upcase
print str.tr(key, CHARS)


