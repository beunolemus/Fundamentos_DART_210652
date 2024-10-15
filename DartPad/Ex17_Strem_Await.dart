void main() {
  
  // Llamo a la función emitNumber(), que devuelve un Stream.
  // Uso el método listen() para escuchar cada valor emitido por el Stream.
  emitNumber().listen( (int value) {
    
    // Cada vez que el Stream emite un valor, lo imprimo en la consola.
    print( 'Stream value: $value' );
    
  }); 
}


Stream<int> emitNumber() async* {
  
  // Lista de valores que quiero emitir.
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  // Uso un loop para recorrer cada valor en la lista.
  for( int i in valuesToEmit ) {
    
    // Hago una pausa de 1 segundo antes de emitir cada valor.
    await Future.delayed( const Duration(seconds: 1));
    
    // Uso yield para emitir el valor actual del loop.
    yield i;
  }
  
}
