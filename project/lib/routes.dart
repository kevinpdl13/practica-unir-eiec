import 'package:flutter/material.dart';
import 'package:odontologo/widgets/main_menu.dart';
import 'package:odontologo/screens/screens_export.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String menu = '/menu';
  static const String pacientes = '/pacientes';
  static const String paciente = '/paciente';
  static const String historiaClinica = '/historia';
  static const String citas = '/citas';
  static const String agendarcitas = '/agendarcitas';
  static const String tratamientos = '/tratamientos';
  static const String facturacion = '/facturacion';
  static const String inventario = '/inventario';
  static const String configuracion = '/configuracion';

  static Map<String, WidgetBuilder> routes = {
    //initialRoute: (context) => const MyHomePage(title: 'Clínica Odontológica',),
    menu: (context) => const MyAppMenu(),
    pacientes: (context) => const Pacientes(),
    paciente: (context) => const Paciente(),
    historiaClinica: (context) => const HistoriaClinica(),
    citas: (context) => const CitaPaciente(),
    agendarcitas: (context)  => const AgendarCitas(),
    tratamientos: (context) => const Paciente(),
    facturacion: (context) => const Paciente(),
    inventario: (context) => const Paciente(),
    configuracion: (context) => const Paciente(),
  };


}
