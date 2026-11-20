// Con Singleton: solo existe UNA instancia de Configuracion
// en toda la aplicación
class Configuracion {
  // Constructor privado: nadie fuera de la clase puede crear objetos
  Configuracion._();

  // static: vive durante todo el ciclo de vida de la app
  // final: no se puede cambiar la referencia de la variable
  static final Configuracion _instancia = Configuracion._();

  // Constructor de fábrica que siempre devuelve la misma instancia
  factory Configuracion() => _instancia;

  String idioma = 'es';
}
