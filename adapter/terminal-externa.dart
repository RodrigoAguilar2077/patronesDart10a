// Simulación de una librería externa
// Esta clase NO puede ser modificada
// Su interfaz es diferente: usa "cobrar" y recibe dólares
class TerminalExterna {
  void cobrar(double dolares) {
    print('Terminal externa: cobro de ${dolares.toStringAsFixed(2)} dólares');
  }
}
