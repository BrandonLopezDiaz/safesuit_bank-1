import 'dart:ui';

import 'package:flutter/material.dart';

class QRCodeScreen extends StatelessWidget {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Retirar dinero',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25, color: Color.fromARGB(255, 242, 244, 250)),
        ),
        backgroundColor: Color.fromARGB(255, 66, 79, 120),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 80),
            const Text(
              'Código QR generado exitosamente!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Úsalo para retirar tu dinero!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0,
              color: Colors.lightBlue),
            ),
            const SizedBox(height: 90.0),
            Center(
              child: Image.asset(
                'assets/images/QR_img.png', // Asegúrate de que el path a la imagen es el correcto.
                width: 200.0,
                height: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


