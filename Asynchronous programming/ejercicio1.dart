//1-Practice using async and await
// Retorna un Future que, cuando se resuelva, contendrá una cadena de texto que representa el rol del usuario.
Future<String> reportUserRole() async {
  var username = await fetchRole(); // Obtiene el rol del usuario de alguna fuente externa, esperando su respuesta antes de continuar.
  return 'User role: $username'; // Retorna una cadena de texto que contiene el rol del usuario.
}

// Retorna un Future que, cuando se resuelva, contendrá una cadena de texto que representa el número total de logins.
Future<String> reportLogins() async {
  var logins = await fetchLoginAmount(); // Obtiene la cantidad total de logins de alguna fuente externa, esperando su respuesta antes de continuar.
  return 'Total number of logins: $logins'; // Retorna una cadena de texto que contiene la cantidad total de logins.
}