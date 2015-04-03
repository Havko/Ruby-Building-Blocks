def stockpicker(prices)
	hash = Hash[prices.map.with_index.to_a]
	print hash
	hash = hash.invert

	loday = hash.min_by{|k,v| v}[0]
	hihash = hash.delete_if {|k, v| k < loday}
	hiday = hash.max_by{|k,v| v}[0]
	#loday = hash.min_by{|k,v| v}[0]
	answer = [loday, hiday]
	return answer
end

print stockpicker([17,3,6,9,15,8,6,1,10])
	