## Para configurar el entorno

Desde la consola de Mongo
* Crear o usar la base del ejercicio 2 del tp2
```
use tp2_2
```

* Crear la colección "disposiciones"
```
db.createCollection("disposiciones")
```

Fuera de la consola de Mongo
* Importar disposiciones2012.json como array (asume ubicación en el mismo directorio del archivo)
```
mongoimport --db tp2_2 --collection disposiciones --type json --file disposiciones_2012.json --jsonArray
mongoimport --db tp2_2 --collection disposiciones --type json --file disposiciones_2013.json --jsonArray
mongoimport --db tp2_2 --collection disposiciones --type json --file disposiciones_2014.json --jsonArray
```
