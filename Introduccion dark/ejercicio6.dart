// Definimos una función llamada `scream` que toma un parámetro de tipo `int` llamado `length`
// y devuelve una cadena de texto. La cadena comienza con una "A" mayúscula, seguida de `length` "a" minúsculas,
// y termina con una "h!".
String scream(int length) => "A${'a' * length}h!";

// Definimos la función `main`.
main() {
  // Creamos una lista llamada `values` que contiene varios números enteros.
  final values = [1, 2, 3, 5, 10, 50];
  // Llamamos al método `skip` en la lista `values` para omitir el primer elemento, el número 1.
  // Luego llamamos al método `take` para tomar los siguientes tres elementos, los números 2, 3 y 5.
  // Finalmente, llamamos al método `map` en la lista resultante para aplicar la función `scream`
  // a cada uno de los elementos, creando una nueva lista con las cadenas resultantes.
  // Finalmente, llamamos al método `forEach` en la lista resultante para imprimir cada cadena en la consola.
  values.skip(1).take(3).map(scream).forEach(print);
}

/*En resumen, este código crea una lista de números enteros y luego realiza una
serie de operaciones en esa lista utilizando los métodos skip, take, map y forEach.
La función scream también es definida y utilizada para transformar los números en cadenas
 de texto que se imprimen en la consola.*/