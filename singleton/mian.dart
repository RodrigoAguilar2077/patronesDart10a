import 'configuracion.dart';

void main() {
  final pantallaInicio = Configuracion('es');
  final pantallaPerfil = Configuracion('es');

  pantallaInicio.idioma = 'en';

  print('Pantalla Inicio Idioma: ${pantallaInicio.idioma}');

  print('Pantalla Perfil Idioma: ${pantallaPerfil.idioma}');
}
