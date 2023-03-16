//2.Introduccion a dark
class Bicycle {
  int cadence;
  int _speed = 0; // velocidad privada, solo accesible dentro de la clase
  int get speed =>
      _speed; // getter público para acceder a la velocidad desde fuera de la clase
  int gear;

  // Constructor de la clase
  Bicycle(this.cadence, this.gear);

  // Método que reduce la velocidad de la bicicleta
  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  // Sobreescribe el método toString() para imprimir la velocidad de la bicicleta
  @override
  String toString() => 'Bicycle: $_speed mph';
}

// Función principal que crea una instancia de Bicycle y la imprime en la consola
void main() {
  var bike = Bicycle(2, 1);
  print(bike);
}

/*En resumen, este código define una clase "Bicycle" que tiene tres propiedades: "cadence"
(ritmo de pedaleo), "gear" (velocidad seleccionada) y "_speed" (velocidad actual, que
es privada y solo accesible dentro de la clase). La clase también tiene un constructor
que inicializa las propiedades "cadence" y "gear" con los valores pasados como argumentos.

La clase "Bicycle" también tiene dos métodos: "applyBrake" (que reduce la velocidad de la
bicicleta en un cierto valor pasado como argumento) y "toString" (que devuelve una cadena
que representa el objeto de la bicicleta, en este caso, la velocidad actual de la bicicleta).

La función principal "main" crea una instancia de la clase "Bicycle" con un ritmo de pedaleo
de 2 y una velocidad de marcha de 1. Luego, imprime la instancia de bicicleta en la consola,
lo que invoca automáticamente el método "toString" para mostrar la velocidad actual de la 
bicicleta.*/