import 'generador-excel.dart';
import 'generador-json.dart';
import 'generador-reportes.dart';
import 'generador-texto.dart';

void main() {
  final generadores = <GeneradorReportes>[
    GeneradorTexto(),
    GeneradorExcel(),
    GeneradorJson(),
  ];

  for (final generador in generadores) {
    generador.generarReporte([10, 8, 8, 9, 8, 10]);
  }

  // Para agregar un formato nuevo solo se crea un Documento
  // y un Generador nuevos, sin modificar GeneradorReportes
}
