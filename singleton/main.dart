import 'configuracion.dart';

void main() {
  final pantallaInicio = Configuracion();
  final pantallaPerfil = Configuracion();

  print('Idioma de la pantalla de inicio: ${pantallaInicio.idioma}');
  print('Idioma de la pantalla de perfil: ${pantallaPerfil.idioma}');

  // Se cambia el idioma desde la pantalla de inicio...
  pantallaInicio.idioma = 'en';

  // ...y el cambio se refleja en todas las pantallas
  print('Idioma de la pantalla de inicio: ${pantallaInicio.idioma}');
  print('Idioma de la pantalla de perfil: ${pantallaPerfil.idioma}');

  print(identical(pantallaInicio, pantallaPerfil)
      ? 'Ambas pantallas son la misma instancia.'
      : 'Las pantallas son instancias diferentes.');
}
