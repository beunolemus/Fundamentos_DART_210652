void main() async {
  
  
  print('Inicio del programa');
  
  // Uso de try-catch para manejar tanto excepciones específicas como otros errores generales.
  try {
    
    // Hago la llamada a httpGet y espero el resultado con await.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si la llamada es exitosa, imprimo el resultado.
    print( 'éxito: $value' );
    
  } on Exception catch(err) {
    // Si ocurre una Exception específica, la capturo aquí y la imprimo.
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    // Si ocurre cualquier otro tipo de error, lo capturo aquí y lo imprimo.
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    // El bloque finally siempre se ejecuta, haya o no errores.
    print('Fin del try y catch');
  }
  
  // Imprimo el mensaje de fin del programa.
  print('Fin del programa');
}


Future<String> httpGet( String url ) async {
  
  // Simulo una espera de 1 segundo para imitar una petición HTTP.
  await Future.delayed( const Duration(seconds: 1));
  
  // Aquí lanzo una excepción personalizada usando Exception.
  throw Exception('No hay parámetros en el URL');
  

}
