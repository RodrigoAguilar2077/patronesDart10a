import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

// Facade (fachada): ofrece una interfaz sencilla
// para un conjunto de clases más complejo
class CineFacade {
  final Proyector _proyector;
  final SistemaAudio _audio;
  final Reproductor _reproductor;

  CineFacade(this._proyector, this._audio, this._reproductor);

  void verPelicula(String pelicula, int volumen) {
    _proyector.encender();
    _audio.encender();
    _audio.ajustarVolumen(volumen);
    _reproductor.reproducir(pelicula);
  }

  void terminarReproduccion() {
    _reproductor.detener();
    _audio.apagar();
    _proyector.apagar();
  }
}
