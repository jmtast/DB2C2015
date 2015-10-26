var conn = new Mongo ();
var db = conn.getDB ("tp2_2");

db.disposiciones_por_tipo.drop();
db.resoluciones_abril_2013.drop();

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
