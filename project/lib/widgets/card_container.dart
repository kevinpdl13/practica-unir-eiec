import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  const CardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
            ]),
        child: child,
      ),
    );
  }
}

class CardContainerForm extends StatelessWidget {
  final Widget child;
  const CardContainerForm({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 10,//kIsWeb ? MediaQuery.of(context).size.height * 0.05 : MediaQuery.of(context).size.height * 0.02,
          horizontal: 10),//kIsWeb ? MediaQuery.of(context).size.height * 0.3 : MediaQuery.of(context).size.height * 0.02),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical:20,horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 5))
            ]),
        child: child,
      ),
    );
  }
}

class CardContainerFormColor extends StatelessWidget {
  final Widget child;
  final Color color;
  const CardContainerFormColor({super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 10,//kIsWeb ? MediaQuery.of(context).size.height * 0.05 : MediaQuery.of(context).size.height * 0.02,
          horizontal: 10),//kIsWeb ? MediaQuery.of(context).size.height * 0.3 : MediaQuery.of(context).size.height * 0.02),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical:20,horizontal: 20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 5))
            ]),
        child: child,
      ),
    );
  }
}
