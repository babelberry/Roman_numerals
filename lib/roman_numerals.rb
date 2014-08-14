UNITS_ARRAY = ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
TENS_ARRAY = ['X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
HUNDREDS_ARRAY = ['C', 'CC', 'CCC', 'CL', 'L', 'LC', 'LCC', 'LCC', 'CM']



def units(num) 
  	
  	UNITS_ARRAY[num - 1] 
end 

def tens(num)
	return "X" if num == 10


	decimal = num / 10 
	unit = num % 10 

	roman_decimal = TENS_ARRAY[decimal - 1]
	roman_unit = UNITS_ARRAY[unit - 1]
	
	return "#{roman_decimal}#{roman_unit}" 
	
end

def hundreds(num)
	return "C" if num == 100 

	hundredth = (num * 0.01).to_i 
	decimal = (num - (hundredth * 100)) / 10 
	unit = num - (hundredth * 100) - (decimal * 10)

	roman_hundredth = HUNDREDS_ARRAY[hundredth -1]
	roman_decimal = TENS_ARRAY[decimal - 1]
	roman_unit = UNITS_ARRAY[unit - 1]

	return "#{roman_hundredth}#{roman_decimal}#{roman_unit}"
end 


