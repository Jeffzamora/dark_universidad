//16-Redirecting constructors
// Definimos la clase `Color`
class Color {
  int red;    // El valor de rojo (de 0 a 255)
  int green;  // El valor de verde (de 0 a 255)
  int blue;   // El valor de azul (de 0 a 255)
  // Constructor de la clase `Color`
  Color(this.red, this.green, this.blue);
  // Constructor con nombre que crea un objeto `Color` negro
  Color.black() : this(0, 0, 0);
}

//17-Const constructors
// La clase Recipe representa una receta de cocina y contiene información sobre los ingredientes,
// las calorías y los miligramos de sodio de la receta.
class Recipe {
final List<String> ingredients; // Una lista de ingredientes de la receta.
final int calories; // El número de calorías de la receta.
final double milligramsOfSodium; // El número de miligramos de sodio de la receta.

const Recipe(this.ingredients, this.calories, this.milligramsOfSodium); // Constructor de la clase.
}