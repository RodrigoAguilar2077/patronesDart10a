import 'observador.dart';

// Sujeto (Subject): avisa a sus observadores cuando hay una tarea nueva
class Agenda {
  final List<Observador> _observadores = [];

  void suscribir(Observador observador) {
    _observadores.add(observador);
  }

  void desuscribir(Observador observador) {
    _observadores.remove(observador);
  }

  void publicarTarea(String tarea) {
    print('Publicando: $tarea');

    // La agenda ya no sabe quiénes son sus observadores,
    // solo les avisa del cambio
    for (final observador in _observadores) {
      observador.actualizar(tarea);
    }
  }
}
