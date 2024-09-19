void main() {
  final pokemon ={
    "Name" : "Pikachu",
    "HP" : 100,
    "isAlive": true,
    "abilities":["impact Trueno", "Cola de Hierro","Rapido"],
    "sprites":
    {
      1 : "pikachu/front.png",
      2 : "pikachu/back.png"
    }
  };
  
  final Map<String, dynamic>trainer={
    'Name':'Ash Ketchup',
    'Gender':'Male',
    'Age': '12',
    'isGymnasiumLeader': false
  };
  
   final pokemons =
   {
     1: "Pikachu",
     2: "Charmander",
     3: "Squirtle",
     4: "Pidgeot"
   };
  
  
  //Imprimir los datos de un mapa

print("""Los datos actuales del mapa son:
$pokemon

""");
}