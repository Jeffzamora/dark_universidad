//2-Practice handling errors
/// Cambia el nombre de usuario haciendo una llamada asíncrona a la función 
/// [fetchNewUsername]. Si la operación es exitosa, se devuelve el nuevo nombre de 
/// usuario como una cadena de caracteres. Si falla, se captura la excepción y se 
/// devuelve un mensaje de error como cadena de caracteres. 
Future<String> changeUsername() async {
  try {
    return await fetchNewUsername();
  } catch (err) {
    return err.toString();
  }
}