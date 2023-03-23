//14-Named constructors
class Color {
  int red;
  int green;
  int blue;
  // Constructor que recibe valores para red, green y blue
  Color(this.red, this.green, this.blue);
  // Constructor con valores predeterminados para crear un color negro
  Color.black()
      : red = 0,
        green = 0,
        blue = 0;
}


//15-Factory constructors
// Clase base
class IntegerHolder {
  IntegerHolder(); // Constructor por defecto
  // Factory constructor que devuelve una instancia de la subclase apropiada
  factory IntegerHolder.fromList(List<int> list) {
    if (list.length == 1) { // Si la lista tiene un elemento
      return IntegerSingle(list[0]); // Devolver una instancia de IntegerSingle
    } else if (list.length == 2) { // Si la lista tiene dos elementos
      return IntegerDouble(list[0], list[1]); // Devolver una instancia de IntegerDouble
    } else if (list.length == 3) { // Si la lista tiene tres elementos
      return IntegerTriple(list[0], list[1], list[2]); // Devolver una instancia de IntegerTriple
    } else { // Si la lista tiene otro número de elementos
      throw Error(); // Lanzar una excepción
    } 
  }
}
// Subclase con un campo de instancia
class IntegerSingle extends IntegerHolder {
  final int a;
  IntegerSingle(this.a); // Constructor que inicializa el campo a partir de un parámetro
}
// Subclase con dos campos de instancia
class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;
  IntegerDouble(this.a, this.b); // Constructor que inicializa los campos a partir de parámetros
}
// Subclase con tres campos de instancia
class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;
  IntegerTriple(this.a, this.b, this.c); // Constructor que inicializa los campos a partir de parámetros
}
