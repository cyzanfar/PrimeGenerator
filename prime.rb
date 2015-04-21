class Prime
	attr_accessor :number

	def initialize(number)
		self.number = number
		prime_serie
	end

	def is_prime?(num)
		counter = 2
		root_num = Math.sqrt(num).ceil
			while counter <= root_num
					if num % counter == 0 && num != counter
						return false
						break
					else
						counter += 1
					end
			end
			return true
	end

	def percentage_prime
		((prime_serie.size / number.to_f) * 100)
	end


	def prime_serie
		prime_array = [1]
		counter = 2
		while counter < number
			if is_prime?(counter)
				prime_array << counter
				counter += 1
			end
			counter += 1
		end
		prime_array
	end

end

