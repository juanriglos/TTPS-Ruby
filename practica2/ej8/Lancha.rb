require_relative "Vehiculo.rb"

class Lancha < Vehiculo
	
	def initialize(a=1)
		@llave = a
	end

	def arrancar()
		if (@llave==1)
			puts "Arrancando Lancha"
		else
			puts "no puede arrancar Lancha"
		end

	end
end

