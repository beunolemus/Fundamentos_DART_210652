void main() {
  
  
  // Uso el método listen para escuchar cada valor que el Stream emite.
  emitNumbers().listen( (value) {
    // Cada vez que el Stream emite un nuevo valor, lo imprimo en la consola.
    print('Stream value: $value');
  });
  
} 


Stream<int> emitNumbers() {
  
  // Creo un Stream que emite un valor cada segundo usando Stream.periodic().
  return Stream.periodic( const Duration(seconds: 1), (value){
    
    // El Stream emitirá el valor (que empieza en 0 y va incrementando) en cada "tick" de 1 segundo.
    return value;
  }).take(5); // Solo tomo los primeros 5 valores emitidos por el Stream.
  
}
