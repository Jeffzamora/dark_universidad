//3-Putting it all together
// Agrega "Hello" al nombre del usuario
String addHello(String user) => 'Hello $user';

// Obtiene el nombre de usuario y lo saluda
Future<String> greetUser() async {
  var username = await fetchUsername(); // Obtiene el nombre de usuario
  return addHello(username); // Agrega "Hello" al nombre de usuario y lo retorna
}

// Cierra la sesión del usuario y devuelve un mensaje de agradecimiento o un mensaje de error si falla
Future<String> sayGoodbye() async {
  try {
    var result = await logoutUser(); // Cierra la sesión del usuario
    return '$result Thanks, see you next time'; // Retorna un mensaje de agradecimiento
  } catch (e) {
    return 'Failed to logout user: $e'; // Retorna un mensaje de error si falla
  }
}