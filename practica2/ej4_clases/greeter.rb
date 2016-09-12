module Countable
	def count_invocations_of(sym)
		
	end
	def invoked?(sym)
		
	end
	def invoked(sym)
		
	end
end

class Greeter
 # Incluyo el Mixin
 include Countable
 def hi
 	puts 'Hey!'
 end
 def bye
 	puts 'See you!'
 end
 # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
 #count_invocations_of :hi
end

a = Greeter.new
b = Greeter.new

a.invoked? :hi