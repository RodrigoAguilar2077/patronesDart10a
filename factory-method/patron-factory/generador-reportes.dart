import 'documento.dart';
import 'documento-excel.dart';
import 'documento-json.dart';
import 'documento-texto.dart';

// Sin Factory Method
class GeneradorReportes {
  void generarReporte(String formato, List<int> calificaciones) {
    if (calificaciones.isEmpty) {
      throw ArgumentError('El reporte necesita una lista de calificaciones');
    }

    // Problema: esta clase conoce TODAS las implementaciones concretas.
    // Si se agrega un formato nuevo hay que modificar este switch.
    Documento documento;

    switch (formato) {
      case 'texto':
        documento = DocumentoTexto();
        break;
      case 'json':
        documento = DocumentoJson();
        break;
      case 'excel':
        documento = DocumentoExcel();
        break;
      default:
        throw ArgumentError('Formato inválido: $formato');
    }

    print(documento.generar(calificaciones));
    print('Reporte generado correctamente');
  }
}
