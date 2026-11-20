import 'dart:convert';

import 'documento.dart';

class DocumentoJson implements Documento {
  @override
  String generar(List<int> calificaciones) {
    // Aquí debe implementarse el proceso de creación del archivo json
    return jsonEncode({'calificaciones': calificaciones});
  }
}
