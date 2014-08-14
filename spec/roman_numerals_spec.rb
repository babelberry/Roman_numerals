require 'roman_numerals'

	describe 'roman_numerals' do 

		context 'Input in between 1 and 9' do  

			it 'returns I when input is 1' do 
				expect(units(1)).to eq 'I'
			end

			it "returns II when input is 2" do
				expect(units(2)).to eq 'II'
			end

			it "returns III when the input is 3" do
				expect(units(3)).to eq 'III'
			end

			it "returns IV when the input is 4" do
				expect(units(4)).to eq 'IV'
			end
		
			it "returns V when the input is 5" do
				expect(units(5)).to eq 'V'
			end 

			it "returns VI when the input is 6" do
				expect(units(6)).to eq 'VI'
			end 

			it "returns VII when the input is 7" do
				expect(units(7)).to eq 'VII'
			end 

			it "returns VIII when the input is 8" do
				expect(units(8)).to eq 'VIII'
			end

			it "returns IX when the input is 9" do
				expect(converter(9)).to eq 'IX'
			end
		end 
	end 

	context 'Input in between 10 and 99' do

		it 'returns X when the input is 10' do
			expect(tens(10)).to eq "X"
		end

		it 'returns XI when the input is 11' do
			expect(converter(11)).to eq "XI"
		end 

		it 'returns XCIX when the input is 99' do
			expect(tens(99)).to eq "XCIX"
		end 


	end

	context 'Input in between 100 and 999' do
		
		it 'returns C when the input is 100' do
			expect(hundreds(100)).to eq "C"
		end 

		it 'returns CCCXXXIII when the input 333' do
			expect(converter(333)).to eq "CCCXXXIII"
		end 

		it 'returns CMXCIX when the input 999' do
			expect(hundreds(999)).to eq "CMXCIX"
		end 

	end

	context 'Input between 1000 and 3999' do

		it 'returns M when the input is 1000' do
			expect(converter(1000)).to eq "M"
		end
		it 'returns MCXI when the input is 1111' do
			expect(thousands(1111)).to eq "MCXI"
		end
	end
	
	context 'Input invalid' do
		it 'returns This number is too big when the input is 4000' do
			expect(converter(4000)).to eq "This number is too big"
		end
	end 
