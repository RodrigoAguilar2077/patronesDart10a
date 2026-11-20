import 'agenda.dart';
import 'historial.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main() {
  final agenda = Agenda();
  final panel = PanelAlumno();
  final notificador = Notificador();
  final historial = Historial();

  // Suscripción de cada servicio observador
  agenda.suscribir(panel);
  agenda.suscribir(notificador);
  agenda.suscribir(historial);

  // Los tres observadores reciben el aviso
  agenda.publicarTarea('Investigación de patrones de diseño');

  // El usuario ya no quiere recibir notificaciones
  agenda.desuscribir(notificador);

  // Solo el panel y el historial reciben el aviso
  agenda.publicarTarea('Investigar el patrón Facade');
}

// Cuándo conviene: cuando varios componentes necesitan
// reaccionar al mismo cambio y sus suscripciones pueden variar.
