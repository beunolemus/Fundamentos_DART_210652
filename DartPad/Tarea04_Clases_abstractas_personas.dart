  void main() {
    // Constructores nombrados

    // Caso de prueba 1: Un nuevo paciente que se registra hoy
    final Bruno = Person(
      ID: 250,
      name: "Bruno",
      firstLastname: "Lemus",
      secondLastname: "Gonzalez",
      gender: "Hombre",
      bloodGroup: "O+",
      curp: "LEGB021006HPLMNRA1",
      birthdate: DateTime(1992, 8, 5),
      isActive: true,
      createdAt: DateTime.now(),
    );
    print("""
  ---------------------------------------
          DATOS PERSONA
  ---------------------------------------""");
    print(Bruno);

    // Caso de prueba 2: Un nuevo paciente que alguna vez fue trabajador del hospital
    final marthaFlores = Person(
      ID: 125,
      name: "Martha",
      firstLastname: "Flores",
      gender: "Mujer",
      bloodGroup: "O+",
      birthdate: DateTime(2008, 1, 8),
    );
    print("""
  ---------------------------------------
          DATOS PERSONA
  ---------------------------------------""");
    print(marthaFlores);

    // Caso de prueba 3: Un paciente que acaba de fallecer
    final fallecido = Person(
      ID: 300,
      name: "Pedro",
      firstLastname: "Martínez",
      gender: "Hombre",
      bloodGroup: "A+",
      birthdate: DateTime(1970, 2, 15),
      isActive: false,
      createdAt: DateTime(2019, 5, 20),
    );
    fallecido.registerDeath();
    print("""
  ---------------------------------------
          DATOS PERSONA FALLECIDA
  ---------------------------------------""");
    print(fallecido);
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

    void registerDeath() {
      isActive = false;
      print("Registrando fallecimiento...");
    }

    @override
    String toString() {
      final String formattedBirthDate = "${birthdate.day.toString().padLeft(2, '0')}/" +
          "${birthdate.month.toString().padLeft(2, '0')}/" +
          "${birthdate.year}";

      final String formattedCreatedDate = "${createdAt.day.toString().padLeft(2, '0')}/" +
          "${createdAt.month.toString().padLeft(2, '0')}/" +
          "${createdAt.year} ${createdAt.hour.toString().padLeft(2, '0')}:${createdAt.minute.toString().padLeft(2, '0')}:${createdAt.second.toString().padLeft(2, '0')}";

      curp ??= "No registrado";
      if (curp == "") curp = "No registrado";

      String status = isActive ? "Activo" : "Inactivo";

      return '''
    ID: $ID,
    Nombre: $name $firstLastname ${secondLastname ?? ""},
    Género: $gender,
    Grupo Sanguíneo: $bloodGroup,
    Fecha de Nacimiento: $formattedBirthDate,
    CURP: $curp,
    Activo: $status,
    Fecha de registro: $formattedCreatedDate
    ''';
    }
  }
