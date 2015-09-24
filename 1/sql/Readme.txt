Info de parte de implementacion del TP1-Base de Datos.

En este directorio se incluyen los archivos sql utilizados en la implementacion pedida

El motor usado es SQLite. Es un motor pequeño, pero cubre todas los elementos a ser usados en el tp 
y permitio facilidad en el desarrollo, al no tener que tener un entorno complejo levantado (servicios levantados) 
y su poco consumo en espacio.

La herramienta usada para crear y acceder a las bases SQLite que utilizamos es:
http://sqlitebrowser.org/

Para mayor comodidad proveemos un archivo DB_RUAT (formatoSQLITE) que puede ser abierto con la herramienta y tiene
todas las tablas y datos cargados.

En caso de querer generar todo de cero, el procedimiento a realizar seria:

1-Crear una nueva base vacia (crea el archivo sqlite)
2-Ejecutar script de creacion de la base : creacion.sql
3- Ejecutar en orden los scripts de carga de datos presentes en el directorio :Parametrizacion
4- Ejecutar el script de creacion del trigger: trigger.sql

5-Finalmente se pueden probar las consultas presentes en el archivo: consultas.sql


Nota: La herramienta SQLite Browser por default no chequea ForeignKeys (permite crearlas pero no las valida)
Para poder utilizarlas se debe activar el check "ForeignKeys" presente en el tab "Edit_Pragmas"