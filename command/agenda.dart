// Sin Command
class Agenda {
  final tareas = [
    'Estudiar Dart',
    'Programar mis HUs',
    'Preparar la exposición de patrones',
    'Hacer pull request de las HU terminadas',
    'Presentar examen TOEFL',
  ];

  // Estado de la última tarea eliminada
  String? eliminada; // el nombre de la tarea
  int? posicionAnterior; // la posición de la tarea en la lista

  // Borrar una tarea
  void eliminar(int posicion) {
    eliminada = tareas.removeAt(posicion);
    posicionAnterior = posicion;
  }

  // Ya no se quiere borrar la tarea, se debe recuperar
  void deshacer() {
    final tarea = eliminada;
    final posicion = posicionAnterior;

    if (tarea != null && posicion != null) {
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }
  }

  // Problema: la agenda solo recuerda la ÚLTIMA eliminación
  // y mezcla la lógica de la acción con la de deshacerla
}
