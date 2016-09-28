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

==3.== ¿Para qué sirven begin .. rescue .. else y ensure ? Pensá al menos 2 casos concretos en que usarías estas sentencias en un script Ruby.
==4.== ¿Para qué sirve retry ? ¿Cómo evitarías caer en un loop infinito al usarla?
==5.== ¿Cuáles son las diferencias entre los siguientes métodos?
