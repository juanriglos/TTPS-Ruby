require_relative "Vehiculo.rb"

class Moto < Vehiculo
	attr_accessor 
	def initialize(a=0)
		@llave= a
	end

	def arrancar()
		if (@llave == 0)

			puts "Arrancando Moto"
		else
			puts "no puede arrancar Moto"
		end

	end
end


