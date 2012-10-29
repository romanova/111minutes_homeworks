class NumberTests
	attr_reader :real, :imaginary

	def initialize(real, imaginary)
		@real = real
		@imaginary = imaginary
	end

	def +(second) 
		NumberTests.new(@real + second.real, @imaginary + second.imaginary)
	end

	def -(second)
		NumberTests.new(@real - second.real, @imaginary - second.imaginary)
	end

	def *(second)
		NumberTests.new(@real * second.real - @imaginary * second.imaginary, @real * second.imaginary + @imaginary * second.real)
	end

	def /(second) 
		denom = second.real * second.real + second.imaginary * second.imaginary;
		NumberTests.new((@real * second.real + @imaginary * second.imaginary) / denom, 
			(@imaginary * second.real - @real * second.imaginary) / denom)		
	end

	def ==(second)
		@real == second.real && @imaginary == second.imaginary
	end
end
