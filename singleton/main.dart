import 'configuracion.dart';

void main() {
  final pantallaInicio = Configuracion('es');
  final pantallaPerfil = Configuracion('es');

  // Se cambia el idioma solo en la pantalla de inicio
  pantallaInicio.idioma = 'en';

  print('Idioma de la pantalla de inicio: ${pantallaInicio.idioma}');
  print('Idioma de la pantalla de perfil: ${pantallaPerfil.idioma}');

  // Problema: las pantallas tienen configuraciones diferentes
  // porque cada una es una instancia distinta
  print(identical(pantallaInicio, pantallaPerfil)
      ? 'Ambas pantallas son la misma instancia.'
      : 'Las pantallas son instancias diferentes.');
}
