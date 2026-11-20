import 'triangulo.dart';

void main() {
  // No se puede instanciar (crear un objeto) de una clase abstracta
  // FiguraGeometrica unaFigura = FiguraGeometrica();

  Triangulo unTriangulo = Triangulo();

  unTriangulo.obtenerArea();
  unTriangulo.obtenerPerimetro();

  print('Área del triángulo: ${unTriangulo.area}');
  print('Perímetro del triángulo: ${unTriangulo.perimetro}');
}
