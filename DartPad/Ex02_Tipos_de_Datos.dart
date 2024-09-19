void main() {
  
  //cadenas string
  final String pokemon = 'Ditto';
  //esteros int
  final int hp =100;
  //boleano (bolean)
  final bool isAlive = true;
  final List<String> abilities =['impostor'];
  final sprites =<String>['ditto/'];
  
  
  print("""El pokemon que eligistis es: $pokemon
  la estadistica de  $pokemon son:
  Vida (HP) :  $hp
  Estatus de vida $isAlive
  habilidades $abilities 
  imagenes $sprites
  """);
 
  
}
