import 'dart:math'; // importa la librería math de Dart
// Definición de la clase abstracta "Shape"

abstract class Shape {
  // Definición de la fábrica abstracta "Shape" que devuelve una instancia de una subclase de "Shape" según el parámetro de tipo "type".
    factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
    }

  // Método abstracto que debe ser implementado por las subclases de "Shape"
    num get area;
}

// Definición de la subclase "Circle"
class Circle implements Shape {
    final num radius;
    Circle(this.radius);
    num get area => pi * pow(radius, 2);
}

// Definición de la subclase "Square"
class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

// Ejemplo de uso de la fábrica abstracta "Shape" para crear objetos de diferentes subclases
main() {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}

/*En resumen, el código define una clase abstracta llamada "Shape" con un método abstracto
"get area" que debe ser implementado por sus subclases. Además, define dos subclases de "Shape":
"Circle" y "Square", que implementan el método "get area" de diferentes maneras.

La parte interesante del código es la fábrica abstracta "Shape". La fábrica toma un parámetro de
tipo "type" y devuelve una instancia de la subclase correspondiente de "Shape". En este ejemplo,
la fábrica puede crear instancias de "Circle" o "Square" según el valor del parámetro "type".

El ejemplo de uso finalmente crea un objeto "Circle" y un objeto "Square" usando la fábrica abstracta
"Shape", y luego imprime el área de cada objeto usando el método "area" implementado por sus respectivas
subclases.*/