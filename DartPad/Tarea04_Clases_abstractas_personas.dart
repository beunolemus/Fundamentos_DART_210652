void main() {
  // Caso 1: Nuevo Paciente registrado hoy
  print(
      '-------------------------------------PERSONA 1--------------------------------------------------');
  final paciente1 = Paciente(
      id: 256,
      nombre: 'Bruno',
      primer_apellido: 'Lemus',
      segundo_apellido: 'Gonzalez',
      genero: 'Masculino',
      grupoSanguineo: 'O+',
      fechaNacimiento: DateTime(2002, 10, 06),
      curp: 'LEGB100206HTPLMNRA1',
      estatus: 'Activo',
      nss: '1234567890',
      tipoSeguro: 'IMSS',
      estatusVida: EstatusVida.Vivo,
      estatusMedico: 'Activo',
      fechaRegistro: DateTime.now(),
      fechaUltimaCita: DateTime.now(),
      tipoUsuario: usuario.Nuevo);
  paciente1.imprimirDatosPaciente();

  // Caso 2: Paciente que fue trabajador del hospital con fecha de registro anterior
  print(
      '-------------------------------------2: PERSONA QUE FUÉ TRABAJADOR--------------------------------------------------');
  final paciente2 = Paciente(
      id: 257,
      nombre: 'Ana',
      primer_apellido: 'López',
      segundo_apellido: 'García',
      genero: 'Femenino',
      grupoSanguineo: 'AB-',
      fechaNacimiento: DateTime(1985, 3, 20),
      curp: 'ANGL850320MDFRRS01',
      estatus: 'Activo',
      nss: '0987654321',
      tipoSeguro: 'ISSSTE',
      estatusVida: EstatusVida.Vivo,
      estatusMedico: 'Activo',
      fechaRegistro: DateTime(2020, 1, 15),
      fechaUltimaCita: DateTime.now(),
      tipoUsuario: usuario.Registrado);
  paciente2.imprimirDatosPaciente();

  // Caso 3: Paciente que acaba de fallecer
  print(
      '-------------------------------------3: PERSONA FALLECIDA--------------------------------------------------');
  final paciente3 = Paciente(
      id: 258,
      nombre: 'Juan',
      primer_apellido: 'Martínez',
      segundo_apellido: 'Sánchez',
      genero: 'Masculino',
      grupoSanguineo: 'O-',
      fechaNacimiento: DateTime(1970, 4, 25),
      curp: 'JAMS700425HDFLSN01',
      estatus: 'Inactivo',
      nss: '5678912345',
      tipoSeguro: 'Privado',
      estatusVida: EstatusVida.Fallecido,
      estatusMedico: 'Inactivo',
      fechaRegistro: DateTime(2022, 6, 10),
      fechaUltimaCita: DateTime.now(),
      tipoUsuario: usuario.Finado);
  paciente3.registrarDefuncion();
  paciente3.imprimirDatosPaciente();
}

enum usuario { Nuevo, Registrado, Finado }

enum EstatusVida { Vivo, Fallecido, Desconocido }

enum EstatusMedico { Activo, Inactivo }

abstract class Persona {
  int id;
  String nombre;
  String primer_apellido;
  String segundo_apellido;
  String genero;
  String grupoSanguineo;
  DateTime fechaNacimiento;
  String curp;
  String estatus;
  DateTime fechaRegistro;
  Persona({
    required this.id,
    required this.nombre,
    required this.primer_apellido,
    required this.segundo_apellido,
    required this.genero,
    required this.grupoSanguineo,
    required this.fechaNacimiento,
    required this.curp,
    required this.estatus,
    required this.fechaRegistro,
  });
  void imprimirDatosPersona() {
    print('ID: $id');
    print('Nombre: $nombre');
    print('Primer Apellido: $primer_apellido');
    print('Segundo Apellido: $segundo_apellido');
    print('Género: $genero');
    print('Grupo Sanguíneo: $grupoSanguineo');
    print(
        'Fecha de Nacimiento: ${fechaNacimiento.year}-${_twoDigits(fechaNacimiento.month)}-${_twoDigits(fechaNacimiento.day)}');
    print('CURP: $curp');
    print('Fecha de Registro: $fechaRegistro');
    print(
        'Estatus Médico: ${estatus.toString().split('.').last}');
    print(
        '-------------------------Datos del Paciente----------------------------------------------');
  }
  
  

  String _twoDigits(int n) {
    return n >= 10 ? '$n' : '0$n';
  }
}

class Paciente extends Persona {
  String nss;
  String tipoSeguro;
  EstatusVida estatusVida;
  String estatusMedico;
  DateTime fechaRegistro;
  DateTime fechaUltimaCita;
  usuario tipoUsuario;
  Paciente({
    required int id,
    required String nombre,
    required String primer_apellido,
    required String segundo_apellido,
    required String genero,
    required String grupoSanguineo,
    required DateTime fechaNacimiento,
    required String curp,
    required String estatus,
    required this.nss,
    required this.tipoSeguro,
    required this.estatusVida,
    required this.estatusMedico,
    required this.fechaRegistro,
    required this.fechaUltimaCita,
    required this.tipoUsuario,
  }) : super(
            id: id,
            nombre: nombre,
            primer_apellido: primer_apellido,
            segundo_apellido: segundo_apellido,
            genero: genero,
            grupoSanguineo: grupoSanguineo,
            fechaNacimiento: fechaNacimiento,
            curp: curp,
            estatus: estatus,
            fechaRegistro: fechaRegistro);
  @override
  void imprimirDatosPersona() {
    super.imprimirDatosPersona();
    print('${tipoUsuario.toString().split('.').last}');
    print('NSS: $nss');
    print('Tipo de Seguro: $tipoSeguro');
    print(
        'Estatus de Vida: ${estatusVida.toString().split('.').last}');
    print(
        'Estatus Médico: ${estatusMedico.toString().split('.').last}');
    print(
        'Fecha de Registro: ${fechaRegistro.year}-${_twoDigits(fechaRegistro.month)}-${_twoDigits(fechaRegistro.day)}');
  }

  void imprimirDatosPaciente() {
    imprimirDatosPersona();
    print(
        'Fecha Última Cita: ${fechaUltimaCita.year}-${_twoDigits(fechaUltimaCita.month)}-${_twoDigits(fechaUltimaCita.day)}');
  }

  void registrarDefuncion() {
    estatusVida = EstatusVida.Fallecido;
    estatusMedico = EstatusMedico.Inactivo.toString().split('.').last;
    tipoUsuario = usuario.Finado;
  }
}
