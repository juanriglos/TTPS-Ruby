module Opuesto
 	def opposite
 		self.!
 	end
	 
end


class TrueClass 
	include Opuesto
end

class FalseClass
	include Opuesto
end

puts false.opposite

puts true.opposite

puts true.opposite.opposite