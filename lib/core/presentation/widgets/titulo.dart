import 'package:flutter/material.dart';

class TituloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 100.0,
      padding: EdgeInsets.fromLTRB(25.1, 10.1, 10.1, 10.1),
      // padding: const EdgeInsets.all(10.0),
      child: const Text("Spin",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 25)),
    );
  }
}
