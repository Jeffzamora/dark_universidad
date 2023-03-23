//4-Mapping to a different type
// Devuelve un iterable de strings que contienen el nombre y la edad de cada usuario en la lista
Iterable<String> getNameAndAges(Iterable<User> users) {
  return users.map((user) => '${user.name} is ${user.age}');
}
// La clase User representa a un usuario con un nombre y una edad
class User {
  String name;
  int age;
  // El constructor recibe un nombre y una edad y los asigna a los campos correspondientes
  User(this.name, this.age);
}

//5-Putting it all together
// Recibe una Iterable de Strings y devuelve una Iterable de EmailAddress.
// Cada String es convertido en un EmailAddress.
Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((s) => EmailAddress(s));
}
// Recibe una Iterable de EmailAddress y devuelve un booleano.
// Devuelve true si algún EmailAddress de la Iterable es inválido.
bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return emails.any((email) => !isValidEmailAddress(email));
}
// Recibe una Iterable de EmailAddress y devuelve una Iterable de EmailAddress.
// Devuelve una Iterable que contiene sólo los EmailAddress válidos.
Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((email) => isValidEmailAddress(email));
}
// La clase EmailAddress representa una dirección de correo electrónico.
// Contiene un String que representa la dirección de correo electrónico.
class EmailAddress {
  final String address;
  // Constructor de la clase EmailAddress. Recibe un String que representa la dirección de correo electrónico.
  EmailAddress(this.address);
  // Sobrescribe el operador == para que dos EmailAddress sean iguales si tienen la misma dirección de correo electrónico.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is EmailAddress &&
              runtimeType == other.runtimeType &&
              address == other.address;
  // Sobrescribe el hashCode para que se base en la dirección de correo electrónico.
  @override
  int get hashCode => address.hashCode;
  // Sobrescribe el método toString para que muestre la dirección de correo electrónico.
  @override
  String toString() {
    return 'EmailAddress{address: $address}';
  }
}