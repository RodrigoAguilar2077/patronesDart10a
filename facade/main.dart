import 'cine-facade.dart';
import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final cine = CineFacade(Proyector(), SistemaAudio(), Reproductor());

  // Iniciar la película
  cine.verPelicula('Coraline', 25);

  // Detener la película
  cine.terminarReproduccion();

  // La fachada coordina todos los pasos para lograr el objetivo.
  // El cliente solo conoce métodos sencillos (verPelicula, terminarReproduccion)
  // y no necesita saber el orden de las llamadas a cada clase.
}
