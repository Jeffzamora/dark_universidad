//Arrow syntax
class MyClass {
  // Definir atributos:
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Devuelve el producto de los valores anteriores:
  int get product => value1 * value2 * value3;
  
  // Incrementa value1 en 1:
  void incrementValue1() => value1++; 
  
  // Une los elementos de la lista de cadenas con comas:
  String joinWithCommas(List<String> strings) => strings.join(',');
}


//Cascades
class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;
  
  // Setea _done en true.
  void allDone() {
    _done = true;
  }
}

// Una función que recibe un objeto de la clase BigObject, actualiza sus propiedades y luego lo retorna.
BigObject fillBigObject(BigObject obj) {
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList.add(3)
    ..allDone();
}


//Getters and setters
// Esta clase representa una excepción personalizada para precios inválidos
class InvalidPriceException {}

// Esta clase representa un carrito de compras
class ShoppingCart {
  // Lista privada de precios
  List<double> _prices = [];
  
  // Propiedad calculada que devuelve el total de precios en el carrito
  double get total => _prices.fold(0, (e, t) => e + t);
  
  // Propiedad para establecer la lista de precios
  set prices(List<double> value) {
    // Se verifica que no haya precios negativos en la lista
    if (value.any((p) => p < 0)) {
      // Si hay precios negativos, se lanza la excepción personalizada
      throw InvalidPriceException();
    }
    
    // Si no hay precios negativos, se establece la lista de precios
    _prices = value;
  }
}