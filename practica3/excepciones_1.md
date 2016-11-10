# Excepciones

==1.== Investigá la jerarquía de clases que presenta Ruby para las excepciones. ¿Para qué se utilizan las siguientes clases?
- IOError
- NameError
- RuntimeError
- NotImplementedError
- StopIteration
- TypeError
- SystemExit


```
RuntimeError A generic error class raised when an invalid operation is attempted.
raises the exception:
RuntimeError: can't modify frozen array
```
```
   IOError  Raised when an IO(entrada salida) operation fails.
```
```
NameError Raised when a given name is invalid or undefined.
     		puts foo
		raises the exception:
		(NameError: undefined local variable or method `foo' for 											main:Object
```
```
Raised when a feature is not implemented on the current platform. For example, methods depending on the fsync or fork system calls may raise this exception if the underlying operating system or Ruby runtime does not support them.
```
```
Raised to stop the iteration, in particular by Enumerator#next. It is rescued by Kernel#loop.

loop do
  puts "Hello"
  raise StopIteration
  puts "World"
end
puts "Done!"
produces:

Hello
Done!
```

```
SystemExit

Raised by exit to initiate the termination of the script.
```

```
Raised when encountering an object that is not of the expected type.

[1, 2, 3].first("two")
raises the exception:

TypeError: no implicit conversion of String into Integer
```
```
Exception
    StandardError
        ArgumentError
        FiberError (1.9)
        IndexError
            KeyError (1.9)
            StopIteration (1.9)
        IOError  
            EOFError
        LocalJumpError
        NameError    
            NoMethodError
        RangeError
            FloatDomainError
        RegexpError
        RuntimeError
        SystemCallError
            system-dependent exceptions (Errno::xxx)
        ThreadError
        TypeError
        ZeroDivisionError
```     


```
Exception
    fatal
    NoMemoryError
    ScriptError
        LoadError
        NotImplementedError
        SyntaxError
    SecurityError 
    SignalException
        Interrupt
    SystemExit
    SystemStackError
```




==2.== ¿Cuál es la diferencia entre raise y throw ? ¿Para qué usarías una u otra opción?
Raise es para levantar la excepcion, throw encambio trabaja como el go to... 

==3.== ¿Para qué sirven begin .. rescue .. else y ensure ? Pensá al menos 2 casos concretos en que usarías estas sentencias en un script Ruby.

begin=mientras ejecute algo y pase un error se ejecuta el rescue
La decisión de qué rescue utilizar, es similar al caso de un case
Para cada rescue compara la excepción lanzada con cada uno de los parámetros nombrados
La comparación es: parámetro == $!
Esto significaría que si el tipo de la excepción lanzada coincide con el del parámetro
Si se omiten parámetros, se compara con StandardError
Si no machea con ningún parámetro, sale del bloque begin/end buscando en el método que invocó un manejador para la misma, y así siguiendo hacia arriba en la pila
Casi siempre usaremos nombre de clases como parámetros a rescue, pero podemos usar expresiones que retornen una subclase de Exception

Varias veces necesitamos ejecutar determinado código al finalizar un método de forma segura, es decir independientemente de si se produce un error en la mitad
Por ejemplo, tenemos un archivo abierto, que necesitamos sea cerrado antes de finalizar el bloque
La cláusula ensure cumple esta función
El código bajo ensure se ejecutará siempre, haya sido una ejecución exitosa o con algún problema

El else aplica cuando ninguno de los rescue manejan la excepción
Tener cuidado porque ensure ejecutará siempre, incluso cuando no se produce un error
==4.== ¿Para qué sirve retry ? ¿Cómo evitarías caer en un loop infinito al usarla?

A veces podemos corregir una causa de excepción
Para estos casos, podemos usar retry para volver a ejecutar el bloque begin/end
Es muy factible caer en loops infinitos
==5.== ¿Cuáles son las diferencias entre los siguientes métodos?

```
def opcion_1
 a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
 b = 3
 c = a.map do |x|
 x * b
 end
 puts c.inspect
rescue
 0
end
def opcion_2
 c = begin
 a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
 b = 3
 a.map do |x|
 x * b
 end
 rescue
 0
 end
 puts c.inspect
end
def opcion_3
 a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
 b = 3
 c = a.map { |x| x * b } rescue 0
 puts c.inspect
end
def opcion_4
 a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
 b = 3
 c = a.map { |x| x * b rescue 0 }
 puts c.inspect
end
```

en def1 x es nil * algo da error y hace el rescue 0
devolviendo 0

def4 hace el rescue en cada map entonces donde hay nil pone el valor 0

def2 el rescue atiende la operacion pero despues podes seguir haciendo cosas
