import 'documento.dart';

// Creador: define el Factory Method
abstract class GeneradorReportes {
  // Factory Method: cada subclase decide qué documento crear
  Documento crearDocumento();

  void generarReporte(List<int> calificaciones) {
    if (calificaciones.isEmpty) {
      throw ArgumentError('El reporte necesita una lista de calificaciones');
    }

    // Ya no hay switch: el generador no conoce las clases concretas
    final documento = crearDocumento();

    print(documento.generar(calificaciones));
    print('Reporte generado correctamente');
  }
}
