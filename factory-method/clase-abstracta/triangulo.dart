// Clase que implementa FiguraGeometrica
import 'figura-geometrica.dart';

class Triangulo implements FiguraGeometrica {
  @override
  double? perimetro;
  @override
  double? area;

  double base = 10;
  double altura = 15;

  @override
  void obtenerArea() {
    area = base * altura / 2;
  }

  @override
  void obtenerPerimetro() {
    // Triángulo equilátero: tres lados iguales
    perimetro = base * 3;
  }
}
