void main() async {
  
  
  print('Inicio del programa');
  
  // Uso de try-catch para manejar posibles errores de forma asíncrona.
  try {
    
    //llamada a httpGet y asigno el resultado a la variable 'value'.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Imprimo el valor obtenido de la petición HTTP (si es exitosa).
    print( value );
    
  } catch (err) {
    // Capturo cualquier error que ocurra durante la ejecución de httpGet y lo imprimo.
    print('Tenemos un error: $err');
  }
  
  // Imprimo este mensaje después de que el Future se resuelva o falle.
  print('Fin del programa');
}


Future<String> httpGet( String url ) async {
  
  // Simulo un retraso de 1 segundo antes de devolver el resultado.
  await Future.delayed( const Duration(seconds: 1));
  
  // Lanza un error simulado para probar el manejo de excepciones.
  throw 'Error en la petición';
  
 
}
