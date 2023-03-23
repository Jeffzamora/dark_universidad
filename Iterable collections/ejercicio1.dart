//1-Practice writing a test predicate
// Esta función recibe una lista de strings y devuelve el primer string que comienza con la letra "M" y que contiene la letra "a".
String singleWhere(Iterable<String> items) {
  return items.singleWhere(
      (element) => element.startsWith('M') && element.contains('a'));
}


//2-Checking conditions
// Función que devuelve true si hay algún usuario menor de 18 años en la lista de usuarios
bool anyUserUnder18(Iterable<User> users) {
  return users.any((user) => user.age < 18);
}
// Función que devuelve true si todos los usuarios en la lista tienen más de 13 años
bool everyUserOver13(Iterable<User> users) {
  return users.every((user) => user.age > 13);
}
// Clase que representa a un usuario
class User {
  String name;
  int age;
  // Constructor de la clase User
  User(
    this.name,
    this.age,
  );
}
