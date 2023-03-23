//1-Conditional property access
// La función recibe una cadena nullable (puede ser null o una cadena) y retorna un entero nullable (puede ser null o un entero)
int? stringLength(String? nullableString) {
  // El operador de seguridad de acceso (?.) se utiliza para evitar una excepción en caso de que la cadena sea null. Si la cadena no es null, se retorna su longitud. Si es null, se retorna null.
  return nullableString?.length;
}

//2-Null-coalescing operators
abstract class Store {
  int? storedNullableValue;

  /// Si [storedNullableValue] es actualmente `null`, 
  /// actualiza su valor con el resultado de [calculateValue], 
  /// o establece su valor en `0` si [calculateValue] es `null`.
  void updateStoredValue() {
    if (storedNullableValue == null) {
      storedNullableValue = calculateValue() ?? 0;
    }
  }

  /// Calcula un valor a utilizar, 
  /// que puede ser `null`.
  int? calculateValue();
}