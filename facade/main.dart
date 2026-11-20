import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final proyector = Proyector();
  final audio = SistemaAudio();
  final reproductor = Reproductor();

  // Iniciar la película
  // Sin Facade, el cliente debe conocer cada clase y llamar
  // cada método en el orden correcto
  proyector.encender();
  audio.encender();
  audio.ajustarVolumen(25);
  reproductor.reproducir('Coraline');

  // Detener la película
  reproductor.detener();
  audio.apagar();
  proyector.apagar();
}
