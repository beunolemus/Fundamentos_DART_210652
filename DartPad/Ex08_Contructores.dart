void main() {
  //Constructors nombrados
  // Caso de prueba 1

  final juanPerez = Person(
    ID:250,
    name:"Bruno",
    firstLastname:"Lemus",
    secondLastname:"Gonzalez",
    gender: "Hombre",
    bloodGroup: "O+",
    curp: "LEGB021006HPLMNRA1",
    birthdate: DateTime(1992, 08, 05),
    isActive: true,
    createdAt:  DateTime(2024, 09, 2024, 11, 05, 16),
  );
  print("""---------------------------------------
        DATOS PERSONA
------------------------------------------""");
   print(juanPerez);

  //caso de prueba 2--- enviando solo los datos requeridos (obligatorios)
  final marthaFlores = Person(
    ID:125,
    name:"Martha",
    firstLastname: "Flores",
    gender: "Mujer",
    bloodGroup: "O+",
    birthdate: DateTime(2008,01,08)
  );
  print("""---------------------------------------
        DATOS PERSONA
------------------------------------------""");
  print(marthaFlores);
    
  
}

class Person {
  int ID;
  String? cortesyTitle; 
  String name;
  String firstLastname; 
  String? secondLastname;
  String gender;
  String bloodGroup;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;

  Person({
    required this.ID,
    this.cortesyTitle,
    required this.name,
    required this.firstLastname,
    this.secondLastname,
    required this.gender,
    required this.bloodGroup,
    this.curp,
    required this.birthdate,
    this.isActive = true,
    DateTime? createdAt,
    this.updatedAt,
  }) : createdAt = createdAt ?? DateTime.now();

@override
String toString() {
  final String formatedBirthDate = "${birthdate.day.toString().padLeft(2, '0')}/" +
      "${birthdate.month.toString().padLeft(2, '0')}/" + 
      "${birthdate.year}"; 

  final String formattedCreatedDate = "${createdAt.day.toString().padLeft(2, '0')}/" +
    "${createdAt.month.toString().padLeft(2, '0')}/" + 
    "${createdAt.year} ${createdAt.hour.toString().padLeft(2, '0')}:${createdAt.minute.toString().padLeft(2,
'0')}:${createdAt.second.toString().padLeft(2, '0')}";

  curp??="No registrado";
  if(curp=="") curp="No registrado";

  String status = "Sin definir"; 
  if (isActive) {
    status = "Activo"; 
  } else {
    status = "Inactivo"; 
  }


  

  return '''
  ID: $ID,
  Nombre: $name $firstLastname $secondLastname,
  Género: $gender,
  Grupo Sanguíneo: $bloodGroup,
  Fecha de Nacimiento: $formatedBirthDate,
  CURP: $curp,
  Activo: $status,
  Fecha de registro: $formattedCreatedDate
  ''';
}


}
