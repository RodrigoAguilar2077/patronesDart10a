import 'generador-reportes.dart';

void main() {
  final generador = GeneradorReportes();

  // Un mismo servicio, formatos diferentes elegidos con un String
  generador.generarReporte('texto', [10, 8, 8, 9, 8, 10]);
  generador.generarReporte('excel', [10, 8, 8, 9, 8, 10]);
  generador.generarReporte('json', [10, 8, 8, 9, 8, 10]);
}
