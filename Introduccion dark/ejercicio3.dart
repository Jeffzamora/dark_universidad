import 'dart:math'; // importa la librería math de Dart

// Define una clase llamada Rectangle
class Rectangle {
  int width; // Ancho del rectángulo
  int height; // Altura del rectángulo
  Point origin; // Punto de origen del rectángulo

  // Constructor de la clase que tiene valores por defecto
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  // Sobreescribe el método toString() para imprimir la información del rectángulo
  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

// Función principal que crea varias instancias de la clase Rectangle y las imprime en la consola
main() {
  // Crea un rectángulo con origen en (10, 20), ancho de 100 y altura de 200
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));

  // Crea un rectángulo con origen en (10, 10), ancho y altura por defecto (0)
  print(Rectangle(origin: const Point(10, 10)));

  // Crea un rectángulo con origen por defecto (0, 0), ancho de 200 y altura por defecto (0)
  print(Rectangle(width: 200));

  // Crea un rectángulo con origen y dimensiones por defecto (0, 0)
  print(Rectangle());
}
/*En resumen, este código define una clase "Rectangle" que tiene tres propiedades:
"width" (ancho del rectángulo), "height" (altura del rectángulo) y "origin" (
el punto de origen del rectángulo, que es un objeto de la clase Point de la librería math de Dart).
La clase también tiene un constructor que inicializa las propiedades con valores por defecto.

La clase "Rectangle" también tiene un método "toString" que devuelve una cadena que representa
el objeto de rectángulo, en este caso, la información del punto de origen, el ancho y la altura.

La función principal "main" crea varias instancias de la clase "Rectangle" con diferentes valores
para el punto de origen, el ancho y la altura, y las imprime en la consola utilizando el método "print".

*/