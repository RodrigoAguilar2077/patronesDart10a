import 'agenda.dart';

void main() {
  final agenda = Agenda();

  print('Tareas iniciales: ${agenda.tareas}');

  agenda.eliminar(1);
  print('Tareas después de eliminar: ${agenda.tareas}');

  agenda.eliminar(0);
  print('Tareas después de eliminar otra: ${agenda.tareas}');

  // El usuario se arrepiente y quiere deshacer las dos eliminaciones
  agenda.deshacer();
  print('Tareas después del primer deshacer: ${agenda.tareas}');

  agenda.deshacer();
  print('Tareas después del segundo deshacer: ${agenda.tareas}');
  // La segunda tarea eliminada ya no se puede recuperar
}
