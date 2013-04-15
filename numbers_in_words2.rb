module InWords
	def in_words
		if self < 1000
			ones = ["zero","one","two","three","four","five","six","seven","eight","nine"]
			teens = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
			tens = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

			if self < 10
				ones[self].to_s
			elsif self < 20
				teens[self - 10].to_s
			elsif self < 100
				tens_idx = (self / 10).floor
				ones_idx = self - (tens_idx * 10)
				"#{ tens[ tens_idx -2 ] } #{ ones[ ones_idx ] }"
			else
				# calc 100's, teens, tens and ones, or ones digits
				hundreds_idx = (self / 100).floor 
				remain1 = self - (hundreds_idx * 100) 
				if remain1 == 0 
					"#{ ones[ hundreds_idx ] } hundred"
				elsif remain1 < 10
					"#{ ones[ hundreds_idx ] } hundred #{ ones[ remain1 ] }"
				elsif remain1 < 20
				  "#{ ones[ hundreds_idx ] } hundred #{ teens[ remain1 - 10 ] }"
				else
				  tens_idx = remain1/10.floor
				  ones_idx = remain1 - (tens_idx * 10)
				  if ones_idx == 0
					"#{ ones[ hundreds_idx ] } hundred #{ tens[ tens_idx - 2 ] }"
				  else
					"#{ ones[ hundreds_idx ] } hundred #{ tens[ tens_idx - 2 ] } #{ ones[ ones_idx ] }"
				  end
				end
			end
		else
			"Enter a number less than 1000"
		end
	end
end

class Fixnum
  include InWords
end

puts 221.in_words