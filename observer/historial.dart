// Observador concreto agregado sin modificar la Agenda
import 'observador.dart';

class Historial implements Observador {
  final List<String> _tareas = [];

  @override
  void actualizar(String tarea) {
    // El historial podría guardarse en memoria,
    // en una base de datos local (SQLite) o en la nube
    _tareas.add(tarea);
    print('Historial: ${_tareas.length} tarea(s) registradas');
  }
}
