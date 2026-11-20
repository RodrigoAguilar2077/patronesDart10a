import 'documento-texto.dart';
import 'documento.dart';
import 'generador-reportes.dart';

// Creador concreto
class GeneradorTexto extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoTexto();
  }
}
