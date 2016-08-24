
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