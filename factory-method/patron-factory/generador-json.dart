import 'documento-json.dart';
import 'documento.dart';
import 'generador-reportes.dart';

// Creador concreto
class GeneradorJson extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoJson();
  }
}
