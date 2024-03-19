import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 100.0,
      padding: const EdgeInsets.all(10.0),
      child: const Text("hola Mundo"),);
  }

}