import 'package:flutter/material.dart';

class ToastMSG {

  static void showError(BuildContext context, String description, int duration){
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(description, textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.red,
      duration: Duration(seconds: duration),
    ));
  }

  static void showWarning(BuildContext context, String description, int duration){
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(description, textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.yellow,
      duration: Duration(seconds: duration),
    ));
  }

  static void showSuccess(BuildContext context, String description, int duration){
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(description, textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.green,
      duration: Duration(seconds: duration),
    ));
  }

  static void showInfo(BuildContext context, String description, int duration){
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(description, textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.lightBlue,
      duration: Duration(seconds: duration),
    ));
  }

}
