import 'controlador-comandos.dart';
import 'eliminar-tarea.dart';

void main() {
  final tareas = [
    'Estudiar Dart',
    'Programar mis HUs',
    'Preparar la exposición de patrones',
    'Hacer pull request de las HU terminadas',
    'Presentar examen TOEFL',
  ];

  final controlador = ControladorComandos();

  print('Tareas iniciales: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 1));
  print('Tareas después de eliminar: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 0));
  print('Tareas después de eliminar otra: $tareas');

  // Deshacer las eliminaciones en orden inverso
  controlador.deshacer();
  print('Tareas después del primer deshacer: $tareas');

  controlador.deshacer();
  print('Tareas después del segundo deshacer: $tareas');

  // Cada comando conserva su propia eliminación y sabe cómo revertirla.
  // Ahora se pueden agregar más comandos sin modificar el controlador.
}
