import 'package:flutter/material.dart';

class OdontologiaMenu extends StatelessWidget {
  final Function(String) onOptionSelected;
  final bool isHorizontal;

  const OdontologiaMenu({
    super.key,
    required this.onOptionSelected,
    this.isHorizontal = false,
  });

  final menuItems = const [
    {'icon': Icons.person, 'title': 'Pacientes'},
    {'icon': Icons.person, 'title': 'Paciente'},
    {'icon': Icons.person, 'title': 'Historia Clinica'},
    {'icon': Icons.calendar_today, 'title': 'Citas'},
    {'icon': Icons.calendar_today, 'title': 'Agendar Citas'},
    {'icon': Icons.healing, 'title': 'Tratamientos'},
    //{'icon': Icons.receipt, 'title': 'Facturación'},
    //{'icon': Icons.inventory, 'title': 'Inventario'},
    {'icon': Icons.settings, 'title': 'Configuración'},
  ];

  @override
  Widget build(BuildContext context) {
    return isHorizontal
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: menuItems.map((item) => _buildButton(context, item)).toList(),
          )
        : ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Text('Menú Odontología',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
              ...menuItems.map((item) => _buildTile(context, item)),
            ],
          );
  }

  Widget _buildTile(BuildContext context, Map<String, dynamic> item) {
    return ListTile(
      leading: Icon(item['icon']),
      title: Text(item['title']),
      onTap: () {
        Navigator.pop(context);
        onOptionSelected(item['title']);
      },
    );
  }

  Widget _buildButton(BuildContext context, Map<String, dynamic> item) {
    return TextButton.icon(
      icon: Icon(item['icon']),
      label: Text(item['title']),
      onPressed: () => onOptionSelected(item['title']),
    );
  }
}

