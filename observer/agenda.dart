import 'notificador.dart';
import 'panel-alumno.dart';

// Sin Observer
class Agenda {
  final PanelAlumno panel = PanelAlumno();
  final Notificador notificador = Notificador();

  void publicarTarea(String tarea) {
    print('Publicando: $tarea');

    panel.mostrar(tarea);
    notificador.notificar(tarea);

    // Problema: la agenda se ocupa de tres cosas
    // (publicar tareas, actualizar la UI y enviar notificaciones).
    // Viola el principio de responsabilidad única y para agregar
    // otro servicio hay que modificar esta clase.
  }
}
