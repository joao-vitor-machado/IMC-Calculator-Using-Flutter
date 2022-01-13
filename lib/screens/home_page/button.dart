import 'package:flutter/material.dart';

class ButtonIMC extends StatelessWidget {

  final Function onPressed;

  const ButtonIMC({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: double.infinity, height: 80.0 ),
        child: ElevatedButton(
          child: Text("Calcular IMC"),
          onPressed: () => onPressed(),
        ),
      ),
    );
  }
}
