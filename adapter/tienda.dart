import 'medio-de-pago.dart';

// Con Adapter: la tienda solo conoce el contrato MedioDePago
class Tienda {
  void finalizarCompra(double total, MedioDePago medioDePago) {
    medioDePago.pagar(total);
  }
}
