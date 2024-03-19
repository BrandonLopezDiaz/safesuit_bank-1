import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

//Inicializo mi varible global de notificaciones
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void initializeNotifications() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('launch_background');
  final InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}

Future<void> _showNotification() async {
  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.requestNotificationsPermission();

  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails('1', 'NopalBank',
          importance: Importance.max, priority: Priority.high);

  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  await flutterLocalNotificationsPlugin.show(
    0,
    'Transferencia',
    'Haz hecho una transferencia',
    platformChannelSpecifics,
    payload: 'payload',
  );
}

class Trans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transferencias',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TransferenciasPage(),
    );
  }
}

class TransferenciasPage extends StatefulWidget {
  @override
  _TransferenciasPageState createState() => _TransferenciasPageState();
}

class _TransferenciasPageState extends State<TransferenciasPage> {
  TextEditingController cantidadController =
      TextEditingController(text: '\$0.00');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transferencias',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 28, color: Color.fromARGB(255, 242, 244, 250)),
        ),
        backgroundColor: Color.fromARGB(255, 66, 79, 120),
      ),
      //backgroundColor: Color.fromARGB(255, 56, 99, 228),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: cantidadController,
              textAlign: TextAlign.center,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              style: const TextStyle(
                  fontSize: 100.0, color: Color.fromARGB(255, 66, 79, 120)),
            ),
            SizedBox(height: 80.0),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 205, 205, 205),
                  hintText: 'Concepto',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  //border: InputBorder.none, // Quita el borde del TextField
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes añadir la lógica para enviar la transferencia
                // Puedes acceder al texto del TextField usando su controlador
                String cantidad = cantidadController.text;
                print('Cantidad ingresada: $cantidad');
                _showNotification();
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 242, 244, 250),
                  backgroundColor: Colors.green,
                  minimumSize: Size(150, 50)),
              child: Text(
                'Enviar',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 150.0),
          ],
        ),
      ),
    );
  }
}
