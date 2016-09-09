require_relative "Auto.rb"
require_relative "Lancha.rb"
require_relative "Moto.rb"

class Taller
def probar(objeto)
 objeto.arrancar
end
end

t = Taller.new

a = Auto.new
m = Moto.new
l = Lancha.new

a_fallido = Auto.new(1)
t.probar(a_fallido)
t.probar(a)
t.probar(m)
t.probar(l)


#Suponé que, posteriormente, el taller necesita probar una motosierra. ¿Podrías hacerlo? ¿Cómo?
#¿Qué concepto del lenguaje estás usando para poder realizar esto?

#Lo resuelvo con el concepto de duck typing creo la clase motosierra y creo un metodo q se llame 
#arrancar y puedo probar el objeto