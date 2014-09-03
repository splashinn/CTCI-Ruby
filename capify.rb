# Given an arbitrary string, generate all the string combinations of upper- & lower-case 
# letters from the original string
# Example: given 'ab', generate 'ab', 'Ab', 'aB', 'AB'

def capify(str)
	str_size = str.length
	result = ['']
	str.each_char do |s|
		tmp = result.clone
		result = []
		tmp.each do |as|
			result << as + s.upcase
			result << as + s.downcase
		end
	end
	return result
end

p capify("kyle")