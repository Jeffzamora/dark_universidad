main() {
    // Declaración de una función llamada "stringify" que toma dos argumentos enteros x e y y devuelve una cadena concatenando ambos valores.
    String stringify(int x, int y) {
        return '$x $y';
    }

    // Declaración de una variable de cadena nullable llamada "foo" que tiene el valor "a string".
    String? foo = 'a string';
    
    // Declaración de una variable de cadena nullable llamada "bar" sin asignarle ningún valor.
    String? bar; 

    // Declaración de una variable de cadena nullable llamada "baz" que tiene el valor de "foo" si no es nulo, de lo contrario tiene el valor de "bar".
    String? baz = foo ?? bar;

    // Declaración de una función llamada "updateSomeVars" que actualiza la variable "bar" si es nula, asignándole el valor de "a string".
    void updateSomeVars() {
        bar ??= 'a string';
    }

    // Declaración de una lista inmutable de cadenas con los valores "a", "b" y "c".
    final aListOfStrings = ['a', 'b', 'c'];

    // Declaración de un conjunto inmutable de enteros con los valores 3, 4 y 5.
    final aSetOfInts = {3, 4, 5};

    // Declaración de un mapa inmutable de cadenas a enteros con una clave "myKey" y un valor 12.
    final aMapOfStringsToInts = {'myKey': 12};

    // Declaración de una lista vacía de números de punto flotante.
    final anEmptyListOfDouble = <double>[];

    // Declaración de un conjunto vacío de cadenas.
    final anEmptySetOfString = <String>{};

    // Declaración de un mapa vacío de números de punto flotante a enteros.
    final anEmptyMapOfDoublesToInts = <double, int>{};
}