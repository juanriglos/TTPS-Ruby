require_relative "Vehiculo.rb"

class Auto < Vehiculo
	attr_accessor :freno_mano, :cambio
	def initialize(a=0,b='punto muerto',c=1)
		@freno_mano= a
		@cambio= b
		@llave = c
	end

	def arrancar()
		if (@freno_mano==0 && @cambio=='punto muerto' && @llave == 1)
			puts "Arrancando auto"
		else
			puts "no puede arrancar Auto"
		end

	end
end

