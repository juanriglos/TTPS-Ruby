VALUE = 'global'
module A
 	VALUE = 'A'  #1 aca
 	class B
 		VALUE = 'B'  #2 termina aca
 		def self.value
 			VALUE   #2 pregunta aca por value y toma el valor de arriba
 		end
 		def value
 			'iB'
 		end
 	end
 	def self.value
 		VALUE
 	end
end

class C
 	class D
 		VALUE = 'D'
 		def self.value
 			VALUE  #3 igual al 2 
 		end
 	end
 	module E
 		def self.value
 			VALUE  #4 trae global lo logico
 		end
 	end
 	def self.value
 		VALUE 	#5 entra aca y toma el valor de global
 	end
end

class F < C
 VALUE = 'F'
end

puts A.value
puts A::B.value
puts C::D.value
puts C::E.value
puts F.value

puts A::value #toma el valor de self.value del module A
#puts A.new.value #error a no tiene metodo new
#puts B.value 	#error no esta inicializada esa constante
puts C::D.value 
puts C.value 	#toma el valor de global
puts F.superclass.value 	#entra a C y ejecuta el module self.value y trae el global