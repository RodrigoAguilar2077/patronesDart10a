import 'comando.dart';

// Invocador: ejecuta los comandos y guarda el historial
class ControladorComandos {
  final List<Comando> _historial = [];

  void ejecutar(Comando comando) {
    comando.ejecutar();
    _historial.add(comando);
  }

  void deshacer() {
    if (_historial.isNotEmpty) {
      _historial.removeLast().deshacer();
    }
  }
}
