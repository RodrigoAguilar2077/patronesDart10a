// Adapter (adaptador):
// traduce la interfaz y los datos para conectar
// la tienda con la librería que no se puede modificar
import 'medio-de-pago.dart';
import 'terminal-externa.dart';

class TerminalAdapter implements MedioDePago {
  static const double tipoDeCambio = 18.0;

  final TerminalExterna terminal;

  TerminalAdapter(this.terminal);

  @override
  void pagar(double pesos) {
    // La conversión ahora es responsabilidad del adaptador
    final dolares = pesos / tipoDeCambio;
    terminal.cobrar(dolares);
  }
}
