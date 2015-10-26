var conn = new Mongo ();
var db = conn.getDB ("tp2_2");

db.mayor_cantidad_de_paginas_utilizadas.drop();
db.fecha_mas_citada.drop();
db.citas_de_fechas.drop();
db.disposiciones_por_tipo.drop();
db.resoluciones_abril_2013.drop();

// Parte 2 - Item 1
// Resoluciones Abril 2013
db.disposiciones.mapReduce (
  function () {
    var fecha = new Date(this.FechaDisposicion);

    if ((fecha.getMonth() + 1) == 4 && (fecha.getFullYear() == 2013) && this.Tipo == "Resoluciones") {
      emit("Resoluciones", 1);
    }
  },
  function (key, values) {
    // Consultar: por qué esta línea no devuelve lo mismo que el sum?
    // return values.length;

    return Array.sum(values);
  }, {
    out: "resoluciones_abril_2013"
  }
);

// ==============================

// Parte 2 - Item 2
// Disposiciones por tipo
db.disposiciones.mapReduce (
  function () {
    emit(this.Tipo, 1);
  },
  function (key, values) {
    return Array.sum(values);
  }, {
    out: "disposiciones_por_tipo"
  }
);

// ==============================

// Parte 2 - Item 3
// Fecha más citada
db.disposiciones.mapReduce (
  function () {
    emit(new Date(this.FechaBOJA).toLocaleDateString(), 1);
    emit(new Date(this.FechaDescripcion).toLocaleDateString(), 1);
  },
  function (key, values) {
    return Array.sum(values);
  }, {
    out: "citas_de_fechas"
  }
);

db.createCollection("fecha_mas_citada");
db.fecha_mas_citada.insert({fecha_mas_citada: db.citas_de_fechas.find().sort({value: -1}).limit(2)[1]._id});

// ==============================

// Parte 2 - Item 4
// Mayor cantidad de páginas utilizadas
db.disposiciones.mapReduce (
  function () {
    emit(this.Tipo, (this.PaginaFinal - this.PaginaInicial) + 1);
  },
  function (key, values) {
    var i, max;
    max = values[0];

    for (i = 1; i < values.length; i++){
      if (values[i] > max) {
        max = values[i];
      }
    }

    return max;
  }, {
    out: "mayor_cantidad_de_paginas_utilizadas"
  }
);
