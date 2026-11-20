import 'medio-de-pago.dart';

// Servicio de pago propio de la tienda (cobra en pesos)
class ServicioPago implements MedioDePago {
  @override
  void pagar(double pesos) {
    print('Servicio de pago: ${pesos.toStringAsFixed(2)} pesos');
  }
}
