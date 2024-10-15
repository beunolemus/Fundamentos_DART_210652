void main() {
  
  // Inicio el programa e imprimo un mensaje en la consola
  print('Inicio del programa');
  
  // Hago una petición HTTP simulada, llamando a httpGet con una URL
  httpGet('https://fernando-herrera.com/cursos')
    // Si todo sale bien, recibo el valor de la respuesta y lo imprimo
    .then( 
      (value){
        print( value );
      })
    // Si hay un error en la petición, lo capturo y lo imprimo en consola
    .catchError( (err) {
    print('Error: $err');
  });
  
  // Imprimo un mensaje indicando que el programa ha llegado al final,
  // pero la petición HTTP todavía está en proceso (por ser asíncrona).
  print('Fin del programa');
}


// Esta función simula una petición HTTP, 
// devuelve un Future que se resuelve después de 1 segundo.
Future<String> httpGet( String url ){
  
  // Simulo un retraso de 1 segundo antes de devolver el resultado o lanzar un error
  return Future.delayed( const Duration(seconds: 1), () {
    
    // Aquí se lanza un error intencionalmente para probar el manejo de errores
    throw 'Error en la petición http';
    
 
    
  });
  
}
