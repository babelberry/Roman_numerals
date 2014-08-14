UNITS_ARRAY = ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
TENS_ARRAY = ['X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
HUNDREDS_ARRAY = ['C', 'CC', 'CCC', 'CL', 'L', 'LC', 'LCC', 'LCC', 'CM']
THOUSANDS_ARRAY = ['M', 'MM', 'MMM']


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

def thousands(num)
	return "M" if num == 1000

	thousandth = num / 1000
	hundredth = (num - (thousandth * 1000)) / 100
	decimal = (num - (thousandth * 1000) - (hundredth * 100)) / 10 
	unit = num - (thousandth * 1000) - (hundredth * 100) - (decimal * 10)
 
	roman_thousandth = THOUSANDS_ARRAY[thousandth - 1]
	roman_hundredth = HUNDREDS_ARRAY[hundredth -1]
	roman_decimal = TENS_ARRAY[decimal - 1]
	roman_unit = UNITS_ARRAY[unit - 1]

 	return "#{roman_thousandth}#{roman_hundredth}#{roman_decimal}#{roman_unit}"
end


def converter(num)

 	return "This number is too big" if num > 3999
 	return "This number doesn\'t exist in roman numerals" if num < 1 
	return thousands(num) if num >= 1000  
	return hundreds(num) if (100...1000).include? num 
	return tens(num) if (10...100).include? num
	return units(num) if (1...10).include? num
end 









