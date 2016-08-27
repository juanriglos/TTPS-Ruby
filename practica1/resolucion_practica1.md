
#### 4) ¿Cuáles son los estados posibles en Git para un archivo? ¿Qué significa cada uno?
Ahora presta atención. Esto es lo más importante a recordar acerca de Git si quieres que el resto de tu proceso de aprendizaje prosiga sin problemas. Git tiene tres estados principales en los que se pueden encontrar tus archivos: confirmado (committed), modificado (modified), y preparado (staged). Confirmado significa que los datos están almacenados de manera segura en tu base de datos local. Modificado significa que has modificado el archivo pero todavía no lo has confirmado a tu base de datos. Preparado significa que has marcado un archivo modificado en su versión actual para que vaya en tu próxima confirmación.

Esto nos lleva a las tres secciones principales de un proyecto de Git: el directorio de Git (Git directory), el directorio de trabajo (working directory), y el área de preparación (staging area).

Banderas de Estado de los Archivos:
M (modified) : El archivo ha sido modificado
C (copy-edit) : El archivo ha sido copiado y modificado
R (rename-edit) : El archivo ha sido renombrado y modificado
A (added) : El archivo ha sido añadido
D (deleted) : El archivo ha sido eliminado
U (unmerged) : El archivo presenta conflictos después de ser guardado en el servidor (merge)


####5) Cloná el repositorio de materiales de la materia:
https://github.com/TTPS-ruby/capacitacion-ruby-ttps.git . Una vez finalizado, ¿cuál
es el hash del último commit que hay en el repositorio que clonaste?
commit 4867a719bf588afa8a5dd85c3a660731b1d4065d
Author: Christian Rodriguez <car@cespi.unlp.edu.ar>
Date:   Mon Nov 23 18:33:42 2015 -0300

    errores sintacticos en rails

####6) ¿Para qué se utilizan los siguientes subcomandos?
1. **init:** Crea un repositorio en el directorio actual
2. **status:** Imprime un reporte del estado actual del árbol de trabajo local
3. **log:** git log [ruta]
    Muestra el log del commit, opcionalmente de la ruta especifica
4. **fetch:** El comando git fetch importa commits de un repositorio remoto a tu repositorio local. Los commits resultantes se almacenan como ramas remotas en vez de las ramas normales locales con las que hemos trabajado. Esto permite revisar cambios antes de integrarlos en la copia del proyecto.
Recupera (fetch) todas las ramas del repositorio . Esto también descarga todos los commits y archivos que se necesitan del otro repositorio.
git fetch <remote> <branch>  → sirve para recuperar de una rama.
Recuperar (fetch) se hace cuando quieras ver en lo que ha estado trabajando otra persona. Ya que el contenido recuperado se presenta como una rama remota, no tiene ningún efecto en el trabajo de desarrollo local. Esto hace que recuperar (fetch) sea una forma segura de revisar commits antes de integrarlos con el repositorio local.
5. **merge:**git merge rama
    Guarda los cambios desde la rama
6. **pull:** Fusionar (merge) cambios del repositorio central al repositorio local es una tarea normal en workflows colaborativos basados en Git. Ya sabemos cómo hacer esto con git fetch seguido de git merge, pero git pull hace esto con un solo comando.
7. **commit:**  Realiza el commit de los archivos que han sido registrados (con git-add)
      -a : Automáticamente registra todos los archivos modificados
8. **stash:** Según se está trabajando en un apartado de un proyecto, normalmente el espacio de trabajo suele estar en un estado inconsistente. Pero puede que se necesite cambiar de rama durante un breve tiempo para ponerse a trabajar en algún otro tema urgente. Esto plantea el problema de confirmar cambios en un trabajo medio hecho, simplemente para poder volver a ese punto más tarde. Y su solución es el comando 'git stash'.
Este comando de guardado rápido (stashing) toma el estado del espacio de trabajo, con todas las modificaciones en los archivos bajo control de cambios, y lo guarda en una pila provisional. Desde allí, se podrán recuperar posteriormente y volverlas a aplicar de nuevo sobre el espacio de trabajo.
9. **push:** El uso más común de git push es publicar los cambios locales en un repositorio central. Después de haber acumulado varios commits locales y de que están listos para que se compartan con el resto del equipo, puedes (de forma opcional) limpiarlos con una reorganización (rebase) interactiva, y luego llevarlos al repositorio central.
10. **rm:** git rm ruta
    Remueve un archivo o directorio del árbol de trabajo
      -f : Fuerza la eliminación de un archivo del repositorio
11. **checkout:** git checkout [rev] archivo
    Recupera un archivo desde la rama o revisión actual
      -f : Sobre-escribe los cambios locales no guardados

####7) Creá un archivo de texto en el repositorio que clonaste en el ejercicio 5 y verificá el estado de tu espacio de trabajo con el subcomando status . ¿En qué estado está el archivo que agregaste?
Untracked files

####8) Utilizá el subcomando log para ver los commits que se han hecho en el repositorio, tomá cualquierade ellos y copiá su hash (por ejemplo, 800dcba6c8bb2881d90dd39c285a81eabee5effa ), y luego utilizá el subcomando checkout para viajar en el tiempo (apuntar tu copia local) a ese commit. ¿Qué commits muestra ahora git log ? ¿Qué ocurrió con los commits que no aparecen? ¿Qué dice el subcomando status ?
Cuando me paro en otro log, los de arriban desaparecen, si hago git checkout master vuelve al ultimo, es buena costumbre hacer siempre git pull. Los commits q muestra despues git log, son todos hasta el, el va hacer el ultimo git log lo q estaba despues desaparece.

####9) Volvé al último commit de la rama principal ( master ) usando nuevamente el subcomando checkout . Corroborá que efectivamente haya ocurrido esto.
Esto es lo q dije arriba

####10)Creá un directorio vacío en el raiz del proyecto clonado. ¿En qué estado aparece en el git status ? ¿Por qué?
No aparece, porque git se fija en la diferencia de caracteres y un directorio es una carpeta.

####11)Creá un archivo vacío dentro del directorio que creaste en el ejercicio anterior y volvé a ejecutar el subcomando status . ¿Qué ocurre ahora? ¿Por qué?
ahi si me aparece la carpeta y el archivo. Porque los archivos pueden tener codigo adentro?

####12) Utilizá el subcomando clean para eliminar los archivos no versionados (untracked) y luego ejecutá git status . ¿Qué información muestra ahora?
me removio el arhcivo q estaba dentro del directorio q cree, pero cuando hago git status, me sigue q el directorio esta untracked.

* * *

#Ruby

####1) Investigá y probá en un intérprete de Ruby cómo crear objetos de los siguientes tipos básicos usando
literales y usando el constructor new (cuando sea posible):
1. Arreglo ( Array )
2. Diccionario o hash ( Hash )
3. String ( String )
4. Símbolo ( Symbol )

Un arreglo. 
literal:
ary = [1, "two", 3.0] #=> [1, "two", 3.0]
para evitar tantos strings
nombres2 = %w{ ann richard william susan pat }

con new:
ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
Array.new(3, true) #=> [true, true, true]
arr.take(3) #=> [1, 2, 3]
browsers.empty? #=> false
arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]
http://www.ruby-doc.org/core-2.1.2/Array.html


Un hash. 
A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, 

grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
options = { :font_size => 10, :font_family => "Arial" }
grades = Hash.new
grades["Dorothy Doe"] = 9
books         = {}
books[:matz]  = "The Ruby Language"
books[:black] = "The Well-Grounded Rubyist"
Un string. 

Un símbolo.
:uno
:hola
:-

####2. ¿Qué devuelve la siguiente comparación? ¿Por qué?
```'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id```

Devuelve falso porque no esta freezado y no es un simbolo. Es un dato dinamico q son como son en ruby, cada vez q lo ejecute me va a dar un object_id <>

####3) Escribí una función llamada reemplazar que reciba un String y que busque y reemplace en el mismo cualquier ocurrencia de { por do\n y cualquier ocurrencia de } por \nend , de modoque convierta los bloques escritos con llaves por bloques multilínea con do y end . Por ejemplo:
```reemplazar("3.times { |i| puts i }")# => "3.times do\n |i| puts i \nend"```

```def reemplazar(cadena)
  cadena.gsub(/['{}']/, '{' => "do\n", '}' => 'end')
end```


####4) Escribí una función que convierta a palabras la hora actual, dividiendo en los siguientes rangos los
minutos:
Si el minuto está entre 0 y 10, debe decir "en punto",
si el minuto está entre 11 y 20, debe decir "y cuarto",
si el minuto está entre 21 y 34, debe decir "y media",
si el minuto está entre 35 y 44, debe decir "menos veinticinco" (de la hora siguiente),
Ejercicios
si el minuto está entre 45 y 55, debe decir "menos cuarto" (de la hora siguiente),
y si el minuto está entre 56 y 59, debe decir "casi las" (y la hora siguiente)
Tomá como ejemplos los siguientes casos:

 A las 10:01
en_palabras(Time.now)
 => "Son las 10 en punto"
 A las 9:33
en_palabras(Time.now)
 => "Son las 9 y media"
 A las 9:45
en_palabras(Time.now)
 => "Son las 10 menos cuarto"
 A las 6:58
en_palabras(Time.now)
 => "Casi son las 7"

```
irb(main):159:0> def en_palabras()
irb(main):160:1> t = Time.now
irb(main):161:1> $min = Integer(t.strftime("%M"))
irb(main):162:1> case $min
irb(main):163:2> when 0 .. 30
irb(main):164:2> puts "son y media"
irb(main):165:2> when 31 .. 60
irb(main):166:2> puts "correcto"
irb(main):167:2> else
irb(main):168:2* puts "wrong"
irb(main):169:2> end
irb(main):170:1> end
=> :en_palabras
irb(main):171:0> en_palabras
correcto
=> nil
```
####5)Escribí una función llamada contar que reciba como parámetro dos string y que retorne la cantidad de veces que aparece el segundo string en el primero, sin importar mayúsculas y minúsculas. Por ejemplo:
```contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la") # => 5```

```irb(main):072:0> def contar (a,b)
irb(main):073:1> a.split.count(b)
irb(main):074:1> end
=> :contar
irb(main):075:0> contar("la la la", "la")
=> 3```

####7) Dada una cadena cualquiera, y utilizando los métodos que provee la clase String , realizá las siguientes operaciones sobre el string :
1. Imprimilo con sus caracteres en orden inverso. ```string.reverse```
2. Eliminá los espacios en blanco que contenga. ```irb(main):088:0> "asd sda sda sd".gsub(' ', '')
=> "asdsdasdasd"   o se puede usar el .strip pero quita espacios en blanco del frente y del reverso```
3. Convertí cada uno de sus caracteres por su correspondiente valor ASCII. ```irb(main):091:0> cadena.each_byte do |c|
irb(main):092:1* puts c
irb(main):093:1> end
108
97
32
108
97
32
108
111
99
97
32
108
97
=> "la la loca la"```
4. Cambiá las vocales por números ( a por 4 , e por 3 , i por 1 , o por 0 , u por
6 ). ```irb(main):100:0> cadena = "abc"
=> "abc"
irb(main):101:0> cadena.gsub('a', '4').gsub('b', '5')
=> "45c"
irb(main):102:0> cadena.gsub('a', '4').gsub('b', '5').gsub('c','6')
=> "456"```

####8) ¿Qué hace el siguiente código?
```irb(main):103:0> [:upcase, :downcase, :capitalize, :swapcase].map do |meth|
irb(main):104:1*  "TTPS Ruby".send(meth)
irb(main):105:1> end
=> ["TTPS RUBY", "ttps ruby", "Ttps ruby", "ttps rUBY"]```

####9) Escribí una función que dado un arreglo que contenga varios string cualesquiera, retorne un nuevo arreglo donde cada elemento es la longitud del string que se encuentra en la misma posición del arreglo recibido como parámetro. Por ejemplo:
```longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2015']) # => [4, 6, 4, 12]```

```irb(main):114:0> lenguajes
=> ["python", "ruby", "java"]
irb(main):115:0> nuevoArreglo = lenguajes.map{|lenguaje| lenguaje.length}
=> [6, 4, 4]```


####10) Escribí una función llamada a_ul que reciba un Hash y retorne un String con los pares de clave/valor del hash formateados en una lista HTML <ul> . Por ejemplo:
```a_ul({ perros: 1, gatos: 1, peces: 0}) # => "<ul><li>perros: 1</li><li>gatos: 1</li><li>peces: 0</li></ul>"```

```
def to_html(hash)
  html = '<ul>'
  hash.each { |clave, valor|  html << "<li> #{clave} : #{valor}</li>" }
  html << '</ul>'
end

# var = to_html :bananas => 5 , :naranjas => 10
# var = to_html({:bananas => 5 , :naranjas => 10})
```

####11) Escribí una función llamada rot13 que encripte un string recibido como parámetro utilizando el algoritmo ROT13 . Por ejemplo:
```rot13("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!") # => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"```

```irb(main):125:0> ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
=> "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
irb(main):126:0>
irb(main):127:0* #generated with .split('').shuffle.join
irb(main):128:0* ENCODING = "MOhqm0PnycUZeLdK8YvDCgNfb7FJtiHT52BrxoAkas9RWlXpEujSGI64VzQ31w"
=> "MOhqm0PnycUZeLdK8YvDCgNfb7FJtiHT52BrxoAkas9RWlXpEujSGI64VzQ31w"
irb(main):129:0>
irb(main):130:0* def encode(text)
irb(main):131:1>     return text.tr(ALPHABET, ENCODING)
irb(main):132:1> end
=> :encode
irb(main):133:0>
irb(main):134:0* def decode(text)
irb(main):135:1>     return text.tr(ENCODING, ALPHABET)
irb(main):136:1> end
=> :decode
irb(main):137:0> encode (texto)
=> "MZPd mvhYyDd"
irb(main):138:0> decode (texto)
=> "OTvL mPjJDCL"
irb(main):139:0> decode ("MZPd mvhYyDd")
=> "algo escrito"```

####12) Escribí una función más genérica, parecida a la del ejercicio anterior, que reciba como parámetro un string y un número n , y que realice una rotación de n lugares de las letras del string y retorne el resultado. Por ejemplo:
```rot("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!", 13) # => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"```

####13) Escribí un script en Ruby que le pida al usuario su nombre y lo utilice para saludarlo imprimiendo en pantalla ¡Hola, <nombre>! . Por ejemplo:
```$ ruby script.rb ```
```Por favor, ingresá tu nombre:```
Matz
```¡Hola, Matz!```

```irb(main):181:0> def llamar
irb(main):182:1> puts "Por favor, ingresa tu nombre:"
irb(main):183:1> a = gets.chomp
irb(main):184:1> puts "Hola " + a
irb(main):185:1> end
=> :llamar
irb(main):186:0> llamar
Por favor, ingresa tu nombre:
juan
Hola juan
=> nil```

####14) Dado un color expresado en notación RGB, debés calcular su representación entera y hexadecimal, donde la notación entera se define como red + green*256 + blue*256*256 y la hexadecimal como el resultado de expresar en hexadecimal el valor de cada color y concatenarlos en orden. Por ejemplo:
```
notacion_hexadecimal([0, 128, 255])
# => '#0080FF' 
notacion_entera([0, 128, 255]) 
# => 16744448 
```

```
irb(main):220:0> def hexa (arreglo)
irb(main):221:1> arreglo.map {|num| num.to_s(16)}
irb(main):222:1> end
=> :hexa
irb(main):223:0> hexa arreglo
=> ["0", "80", "ff"]
irb(main):224:0>
```

####15) Investigá qué métodos provee Ruby para:
```
1. Conocer la lista de métodos de una clase.
Class.methods
2. Conocer la lista de métodos de instancia de una clase.
Class.instance_methods
3. Conocer las variables de instancia de una clase.
class.instance_variables
4. Obtener la lista de ancestros (superclases) de una clase.
 class.superclass
```

####16) Escribí una función que encuentre la suma de todos los números naturales múltiplos de 3 ó 5 menores que un número tope que reciba como parámetro.

```
rb(main):035:0> respuesta = (1...1000).select { |e| x += e if e % 3 == 0 || e % 5 == 0 }
=> [3, 5, 6, 9, 10, 12, 15, 18, 20, 21, 24, 25, 27, 30, 33, 35, 36, 39, 40, 42, 45, 48, 50, 51, 54, 55, 57, 60, 63, 65, 66, 69, 70, 72, 75, 78, 80, 81, 84, 85, 87, 90, 93, 95, 96, 99, 100, 102, 105, 108, 110, 111, 114, 115, 117, 120, 123, 125, 126, 129, 130, 132, 135, 138, 140, 141, 144, 145, 147, 150, 153, 155, 156, 159, 160, 162, 165, 168, 170, 171, 174, 175, 177, 180, 183, 185, 186, 189, 190, 192, 195, 198, 200, 201, 204, 205, 207, 210, 213, 215, 216, 219, 220, 222, 225, 228, 230, 231, 234, 235, 237, 240, 243, 245, 246, 249, 250, 252, 255, 258, 260, 261, 264, 265, 267, 270, 273, 275, 276, 279, 280, 282, 285, 288, 290, 291, 294, 295, 297, 300, 303, 305, 306, 309, 310, 312, 315, 318, 320, 321, 324, 325, 327, 330, 333, 335, 336, 339, 340, 342, 345, 348, 350, 351, 354, 355, 357, 360, 363, 365, 366, 369, 370, 372, 375, 378, 380, 381, 384, 385, 387, 390, 393, 395, 396, 399, 400, 402, 405, 408, 410, 411, 414, 415, 417, 420, 423, 425, 426, 429, 430, 432, 435, 438, 440, 441, 444, 445, 447, 450, 453, 455, 456, 459, 460, 462, 465, 468, 470, 471, 474, 475, 477, 480, 483, 485, 486, 489, 490, 492, 495, 498, 500, 501, 504, 505, 507, 510, 513, 515, 516, 519, 520, 522, 525, 528, 530, 531, 534, 535, 537, 540, 543, 545, 546, 549, 550, 552, 555, 558, 560, 561, 564, 565, 567, 570, 573, 575, 576, 579, 580, 582, 585, 588, 590, 591, 594, 595, 597, 600, 603, 605, 606, 609, 610, 612, 615, 618, 620, 621, 624, 625, 627, 630, 633, 635, 636, 639, 640, 642, 645, 648, 650, 651, 654, 655, 657, 660, 663, 665, 666, 669, 670, 672, 675, 678, 680, 681, 684, 685, 687, 690, 693, 695, 696, 699, 700, 702, 705, 708, 710, 711, 714, 715, 717, 720, 723, 725, 726, 729, 730, 732, 735, 738, 740, 741, 744, 745, 747, 750, 753, 755, 756, 759, 760, 762, 765, 768, 770, 771, 774, 775, 777, 780, 783, 785, 786, 789, 790, 792, 795, 798, 800, 801, 804, 805, 807, 810, 813, 815, 816, 819, 820, 822, 825, 828, 830, 831, 834, 835, 837, 840, 843, 845, 846, 849, 850, 852, 855, 858, 860, 861, 864, 865, 867, 870, 873, 875, 876, 879, 880, 882, 885, 888, 890, 891, 894, 895, 897, 900, 903, 905, 906, 909, 910, 912, 915, 918, 920, 921, 924, 925, 927, 930, 933, 935, 936, 939, 940, 942, 945, 948, 950, 951, 954, 955, 957, 960, 963, 965, 966, 969, 970, 972, 975, 978, 980, 981, 984, 985, 987, 990, 993, 995, 996, 999]
```

```
irb(main):038:0> respuesta = (1...1000).select { |e| x += e if (e % 3 == 0 && e < 20) || (e % 5 == 0 &&  e < 20) }
=> [3, 5, 6, 9, 10, 12, 15, 18]
```


####17) Cada nuevo término en la secuencia de Fibonacci es generado sumando los 2 términos anteriores. Los primeros 10 términos son: 1 , 1 , 2 , 3 , 5 , 8 , 13 , 21 , 34 , 55 . Considerando los términos en la secuencia de Fibonacci cuyos valores no exceden los 4 millones, encontrá la suma de los términos pares.

```
rango = (1..Float::INFINITY)
total = 0
x, y = 0, 1
loop do
	 x, y = y, x+y
	 total += x if (x.even?)
	 if x > 4000000 
 		 break
 	end
end

puts total
```
