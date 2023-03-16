// Importamos la biblioteca `math` que incluye la constante `pi` y otras funciones matemáticas útiles.
import 'dart:math';

// Creamos una interfaz abstracta llamada `Shape`.
abstract class Shape {
  // Definimos un factory constructor llamado `Shape` que toma un parámetro de tipo `String`.
  factory Shape(String type) {
    // Si el tipo es "circle", creamos y devolvemos una instancia de la clase `Circle`.
    if (type == 'circle') return Circle(2);
    // Si el tipo es "square", creamos y devolvemos una instancia de la clase `Square`.
    if (type == 'square') return Square(2);
    // Si el tipo no es "circle" ni "square", lanzamos una excepción.
    throw 'Can\'t create $type.';
  }
  // Definimos un método `area` que devuelve un número.
  num get area;
}

// Creamos una clase llamada `Circle` que implementa la interfaz `Shape`.
class Circle implements Shape {
  // Definimos una propiedad de sólo lectura `radius` que es un número.
  final num radius;
  // Definimos un constructor llamado `Circle` que toma un parámetro de tipo `num`.
  Circle(this.radius);
  // Implementamos el método `area` definido en la interfaz `Shape`.
  num get area => pi * pow(radius, 2);
}

// Creamos una clase llamada `Square` que implementa la interfaz `Shape`.
class Square implements Shape {
  // Definimos una propiedad de sólo lectura `side` que es un número.
  final num side;
  // Definimos un constructor llamado `Square` que toma un parámetro de tipo `num`.
  Square(this.side);
  // Implementamos el método `area` definido en la interfaz `Shape`.
  num get area => pow(side, 2);
}

// Creamos una clase llamada `CircleMock` que implementa la interfaz `Circle`.
class CircleMock implements Circle {
  // Definimos una propiedad `area` que es un número y la inicializamos en cero.
  num area = 0;
  // Definimos una propiedad `radius` que es un número y la inicializamos en cero.
  num radius = 0;
}

// Definimos la función `main`.
main() {
  // Creamos una instancia de `Shape` llamada `circle` utilizando el factory constructor de la interfaz.
  final circle = Shape('circle');
  // Creamos una instancia de `Shape` llamada `square` utilizando el factory constructor de la interfaz.
  final square = Shape('square');
  // Imprimimos el área del círculo.
  print(circle.area);
  // Imprimimos el área del cuadrado.
  print(square.area);
}
