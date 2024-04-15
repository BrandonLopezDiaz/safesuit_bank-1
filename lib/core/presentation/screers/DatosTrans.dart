import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safesuit_bank/core/presentation/screers/TransMonto.dart';
import 'package:safesuit_bank/core/presentation/screers/home.dart';

class DataTrans extends StatelessWidget {
  const DataTrans({super.key});

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
  const TransferenciasPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TransferenciasPageState createState() => _TransferenciasPageState();
}

class _TransferenciasPageState extends State<TransferenciasPage> {
  TextEditingController cantidadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transferencias',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            color: Color.fromARGB(255, 242, 244, 250),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 66, 79, 120),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TransMont()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 242, 244, 250),
            size: 32,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 59.0),
            Text(
              'Datos de emisor',
              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 66, 79, 120),fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              width: 300, // Establece el ancho del contenedor
              //height: 100, // Establece la altura del contenedor
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color.fromARGB(255, 212, 205, 197)
              ),
              child: const Text(
                "Datos de emisor de ejemplo ",
                style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 66, 79, 120))
              ),
            ),
            const SizedBox(height: 45.0),
            SizedBox(height: 20),
            Text(
              'Datos de receptor',
              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 66, 79, 120),fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color.fromARGB(255, 212, 205, 197)
              ),
              child: Text(
                'Datos de receptor de ejemplo',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 66, 79, 120)),
              ),
            ),
            const SizedBox(height: 45.0),
            SizedBox(height: 20),
            
            Text(
              'Monto',
              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 66, 79, 120),fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color.fromARGB(255, 212, 205, 197)
              ),
              child: Text(
                '\$350',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 66, 79, 120)),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left: 78.0), // Cambia el valor según tu necesidad
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) { // Añade una coma aquí
                      return AlertDialog(
                        contentPadding: EdgeInsets.only(top: 60,bottom: 0),
                        
                        title: Center(
                          child: Text(
                            "Transferencia exitosa",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              ),
                          ),
                        ),
                        content:  Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                // Lógica para descargar el comprobante
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(150, 60),
                                foregroundColor: const Color.fromARGB(255,242, 244, 250),
                                backgroundColor: const Color.fromARGB(255, 30, 136, 229)
                              ),
                              child: Text(
                                "Descargar comprobante",
                                style: TextStyle(fontSize: 18),
                                ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
                                 // Cierra el diálogo
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(252, 60),
                                foregroundColor: const Color.fromARGB(255,242, 244, 250),
                                backgroundColor: const Color.fromARGB(255, 67, 160, 71)
                              ),
                              child: Text(
                                "Salir",
                                style: TextStyle(fontSize: 18),
                                ),
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      );
                    }, // Coma añadida aquí
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 242, 244, 250),
                  backgroundColor: Colors.green,
                  minimumSize: const Size(150, 50),
                ),
                child: const Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
