import 'package:flutter/material.dart';

class ValidoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, 
    children: [
      Text(
        "Valido hasta:",
        style: TextStyle(color: Colors.white70, fontSize: 5),
      ),
      const SizedBox(
        width: 1.10,
      ),
      Text("01/26", style: TextStyle(color: Colors.white70, fontSize: 12),
      ),
    ]);
  }
}
