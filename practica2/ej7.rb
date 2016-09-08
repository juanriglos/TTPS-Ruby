

# Tira un dado virtual de 6 caras
def tirar_dado
 rand 1..6
end
# Mueve la ficha de un jugador tantos casilleros como indique el dado en un table
#ro virtual de 40 posiciones.
# Si no se recibe la cantidad de casilleros, aprovecho el valor por defecto para
#ese parámetro para evitar tener que
# llamar a #tirar_dado dentro del cuerpo del método.
def mover_ficha(fichas, jugador, casilleros)
 fichas[:jugador] += casilleros
 if fichas[:jugador] > 40
 puts "Ganó #{jugador}!!"
 true
 else
 puts "#{jugador} ahora está en el casillero #{fichas[:jugador]}"
 fichas[jugador]
 end
end
posiciones = { azul: 0, rojo: 0, verde: 0 }
finalizado = false
until finalizado
 ['azul', 'rojo', 'verde'].shuffle.each do |jugador|
 mover_ficha(posiciones, jugador, tirar_dado)
 end
end

#1) a la lina finalizado = mover_ficha le falta un parametro, ahi le agregue tirar_dado
#2) al metodo mover_ficha no puedo hacer fichas[jugador] a un hash tengo q acceder con ":"