//11-Exceptions

// Definición de un tipo de función que no devuelve nada (void)
typedef VoidFunction = void Function();
// Definición de una excepción que incluye un mensaje
class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}
// Clase abstracta que define una interfaz para un logger (registro de eventos)
abstract class Logger {
  void logException(Type t, [String? msg]); // Método que registra una excepción
  void doneLogging(); // Método que se llama cuando se termina de registrar eventos
}
// Función que ejecuta una función dada y registra cualquier excepción que se lance
void tryFunction(VoidFunction untrustworthy, Logger logger) {
  try {
    untrustworthy(); // Ejecuta la función dada
  } on ExceptionWithMessage catch (e) { // Si se lanza una excepción ExceptionWithMessage
    logger.logException(e.runtimeType, e.message); // Registra la excepción y su mensaje
  } on Exception { // Si se lanza cualquier otra excepción
    logger.logException(Exception); // Registra la excepción
  } finally {
    logger.doneLogging(); // Llama al método que indica que se terminó de registrar eventos
  }
}

//12-Using this in a constructor
// Clase que representa un objeto de datos con un entero, una cadena y un número de coma flotante
class MyClass {
  final int anInt; // entero inmutable
  final String aString; // cadena inmutable
  final double aDouble; // número de coma flotante inmutable
  // Constructor que toma un entero, una cadena y un número de coma flotante
  MyClass(this.anInt, this.aString, this.aDouble);
}


//13-Initializer lists
// Define la clase FirstTwoLetters
class FirstTwoLetters {
  // Declara dos variables finales de tipo String que almacenan las primeras dos letras del argumento
  final String letterOne;
  final String letterTwo;
  // Constructor de la clase, recibe un argumento "word" de tipo String
  FirstTwoLetters(String word)
      // El método "assert" se utiliza para verificar que la longitud de la palabra sea al menos dos caracteres
      : assert(word.length >= 2),
        // Asigna el primer caracter de la palabra al atributo "letterOne"
        letterOne = word[0],
        // Asigna el segundo caracter de la palabra al atributo "letterTwo"
        letterTwo = word[1];
}

