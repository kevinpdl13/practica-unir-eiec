import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  final String tooltip;
  final String label;

  const ButtonBack({
    super.key,
    this.tooltip = 'Back',
    this.label = 'Back',
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: TextButton.icon(
        onPressed: () => Navigator.pop(context),
        icon: Image.asset('assets/images/icons8_64.png', width: 20, height: 20,),
        label: Text(label, style: const TextStyle(color: Colors.white),),
        style: TextButton.styleFrom(foregroundColor: Colors.white,),
      ),
    );
  }
}
