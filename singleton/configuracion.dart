// Sin Singleton: cada vez que se usa "Configuracion(...)"
// se crea un objeto NUEVO con su propio idioma
class Configuracion {
  String? idioma;

  Configuracion(this.idioma);
}
