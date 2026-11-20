import 'documento-excel.dart';
import 'documento.dart';
import 'generador-reportes.dart';

// Creador concreto
class GeneradorExcel extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoExcel();
  }
}
