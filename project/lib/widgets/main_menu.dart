import 'package:flutter/material.dart';
import 'package:odontologo/widgets/odontoligia_menu.dart';
import 'package:odontologo/routes.dart';


class MyAppMenu extends StatelessWidget {
  const MyAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clínica Odontológica',
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: AppRoutes.routes,
      home: HomeScreen(),
       debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _onMenuOptionSelected(BuildContext context, String option) {
    final routeMap = {
      'Pacientes': AppRoutes.pacientes,
      'Paciente': AppRoutes.paciente,
      'Historia Clinica': AppRoutes.historiaClinica,
      'Citas': AppRoutes.citas,
      'Agendar Citas': AppRoutes.agendarcitas,
      'Tratamientos': AppRoutes.tratamientos,
      'Facturación': AppRoutes.facturacion,
      'Inventario': AppRoutes.inventario,
      'Configuración': AppRoutes.configuracion,
    };

    final routeName = routeMap[option];

    if (routeName != null) {
      Navigator.pushNamed(context, routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWide = constraints.maxWidth >= 800;

        return Scaffold(
          backgroundColor: Colors.lightBlue[50], // Fondo azul claro
          appBar: AppBar(title: Text('Clínica Odontológica')),
          drawer: isWide
              ? null
              : Drawer(
                  child: OdontologiaMenu(
                    onOptionSelected: (option) =>
                        _onMenuOptionSelected(context, option),
                  ),
                ),
          body: Row(
            children: [
              if (isWide)
                Container(
                  width: 250,
                  color: Colors.grey[200],
                  child: OdontologiaMenu(
                    onOptionSelected: (option) =>
                        _onMenuOptionSelected(context, option),
                  ),
                ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Odontologia04.png', // Asegúrate que esta imagen exista
                      height: 240,
                      //color: Colors.transparent,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Selecciona una opción del menú',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

