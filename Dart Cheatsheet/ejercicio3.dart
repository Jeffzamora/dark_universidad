//9-Optional positional parameters
// Esta función toma un número entero obligatorio (a) y otros cuatro números enteros opcionales (b, c, d, e)
// y devuelve una cadena que los une con comas.
String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
var total = '$a';
if (b != null) total = '$total,$b'; // Si b no es nulo, se concatena con una coma al total.
if (c != null) total = '$total,$c'; // Si c no es nulo, se concatena con una coma al total.
if (d != null) total = '$total,$d'; // Si d no es nulo, se concatena con una coma al total.
if (e != null) total = '$total,$e'; // Si e no es nulo, se concatena con una coma al total.
return total; // Devuelve la cadena unida con comas.
}



//10-Named parameters
// Definición de la clase MyDataObject
class MyDataObject {
  final int anInt; // Propiedad de tipo entero
  final String aString; // Propiedad de tipo cadena de caracteres
  final double aDouble; // Propiedad de tipo decimal

  // Constructor de la clase
  MyDataObject({
    this.anInt = 1, // Valor por defecto para la propiedad anInt
    this.aString = 'Old!', // Valor por defecto para la propiedad aString
    this.aDouble = 2.0, // Valor por defecto para la propiedad aDouble
  });

  // Método que devuelve una copia de la instancia actual con las propiedades actualizadas
  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(
      anInt: newInt ?? this.anInt, // Si newInt es nulo, se mantiene el valor actual
      aString: newString ?? this.aString, // Si newString es nulo, se mantiene el valor actual
      aDouble: newDouble ?? this.aDouble, // Si newDouble es nulo, se mantiene el valor actual
    );
  }
}