//3-Filtering elements from a list
// Devuelve una iteración de los usuarios cuya edad es 21 o mayor.
Iterable<User> filterOutUnder21(Iterable<User> users) {
  return users.where((user) => user.age >= 21);
}
// Devuelve una iteración de los usuarios con un nombre de longitud igual o menor a 3.
Iterable<User> findShortNamed(Iterable<User> users) {
  return users.where((user) => user.name.length <= 3);
}
class User {
  String name; // El nombre del usuario.
  int age; // La edad del usuario.

  User(
    this.name,
    this.age,
  );
}
