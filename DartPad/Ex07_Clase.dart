void main() {
  // Repaso de clases en Dart

  // Instanciamos la clase Heroe
  print(" Heroe 1---------------------------------------------------------");
  final wolverine = Hero("Logan", "Regeneración");

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  print(" Heroe 2---------------------------------------------------------");
  final scarletWitch = Hero("Magia del caos", "Wanda");
  print(scarletWitch);
  print(scarletWitch.name);
  print(scarletWitch.power);

  
  final xmen = Team(type: "Heroes", name:"X-Men");
  print(xmen);
  print(xmen.name);
  print(xmen.type);


  final justiceLeague = Team(name: "La Liga de la  Justicia");
  print(justiceLeague);
  print(justiceLeague.name);
  print(justiceLeague.type);

  // Intenrtamos instanciar la clase con solo el valor tipo, que no lo permite por que la
  //propiedad de nombres es requerida
  //final hydra= Team(type: "Villanos");
  
}

class Hero {
  String name;
  String power;

  Hero(String pName, String pPower):
        name = pName,
        power = pPower;
}


// Clase con propiedades no posicionales y nombradas

class Team
{
  String name;
  String type;
  // El contructor de la clase simpre deb llevar el mismo nombre de la misma.
  Team({required this.name, this.type="No definido."});
  
}