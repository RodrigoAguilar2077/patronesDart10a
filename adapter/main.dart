import 'servicio-pago.dart';
import 'terminal-adapter.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main() {
  final tienda = Tienda();

  // Pago con el servicio propio
  tienda.finalizarCompra(150.50, ServicioPago());

  // Pago con la terminal externa a través del adaptador
  tienda.finalizarCompra(150.50, TerminalAdapter(TerminalExterna()));

  // La tienda ya no sabe qué terminal se usa ni hace conversiones:
  // cualquier medio que cumpla MedioDePago se puede usar
}
