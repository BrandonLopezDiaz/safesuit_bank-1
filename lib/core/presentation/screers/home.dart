import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safesuit_bank/core/presentation/screers/TransSelecionUser.dart';
import 'package:safesuit_bank/core/presentation/screers/movimientos.dart';
import 'package:safesuit_bank/core/presentation/screers/serviceCFE.dart';
import 'package:safesuit_bank/core/presentation/screers/serviceAgua.dart';
import 'package:safesuit_bank/core/presentation/screers/serviceTelcel.dart';
import 'package:safesuit_bank/core/presentation/screers/PaymentQR.dart';
import 'package:safesuit_bank/main.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inicio")),
      drawer: NavigationDrawer(children: [
        const UserAccountsDrawerHeader(
          accountName: Text("Brandon"),
          accountEmail: Text("Prueba@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(child: Icon(Icons.person)),
          ),
          decoration: BoxDecoration(color: Colors.purple),
        ),
        ListTile(
          leading: const Icon(Icons.help),
          title: const Text('Ayuda'),
        ),
        ListTile(
          leading: const Icon(Icons.notifications),
          title: Text('Notificaciones'),
        ),
        ListTile(
            leading: const Icon(Icons.arrow_forward),
            title: const Text('Transferencias'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TransUser()));
            }),
        ListTile(
          leading: const Icon(Icons.arrow_back),
          title: const Text('Movimientos'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionView()));
          }),
        ListTile(
          leading: const Icon(Icons.credit_card),
          title: const Text('Tarjeta'),
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Cerrar Sesión'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
        )
      ]),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Bienvenido Angel Zea',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            BankCardWidget(),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción para Movimientos
                  },
                  child: Column(
                    children: [
                      Text(
                        'Movimientos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text('Paypal -\$90.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 66, 79, 120),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 21),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Saldo:\n\$500.00',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40), // Espacio
            //Empiezan las opciones
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 9, 24, 109),
                    const Color.fromARGB(168, 0, 0, 0)
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'Opciones',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
              Material(
                color: Colors.transparent,                
                child: InkWell(
                  onTap: () {
                    // Acción para Token app
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.security, size: 40 ),
                        Text('¡Token APP',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                    
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                      Navigator.push(
                    context, MaterialPageRoute(builder: (context) => RetirarQR()));
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.widgets, size: 40 ),
                        Text('Retiros QR',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // Acción para Virtual Card
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.credit_card, size: 40 ),
                        Text('Tarjeta virtual',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // Acción para More
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.more_horiz, size: 40 ),
                        Text('Más',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Paga tus servicios',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TransAgua()),
                          );
                          // Acción para el botón de Aguakan
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/logo_aguakan.jpg'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TransTelcel()),
                          );
                          // Acción para el botón de Telcel
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/logo_telcel.png'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TransCFE()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/logo_cfe.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                      height: 50), // Agrega espaciado al final si es necesario
                ],
              ),
            )
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              color: Colors.black,
            ),
            label: "Credit_Card"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: "Person"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: "Settings")
      ]),
    );
  }
}

class BankCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 180,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 4),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Opacity(
              opacity: 0.15,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/patron_logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          // Encabezado de la tarjeta: Nombre del banco y nivel de usuario
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 12.0), // Ajuste según sea necesario
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'SafeSuit Bank',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4), // Ajusta el espacio según sea necesario
                  Text(
                    'Visionary',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Logotipo en la esquina superior derecha
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 12.0), // Ajuste según sea necesario
              child: Image.asset('assets/images/6404100.png', width: 50),
            ),
          ),
          // Logotipo de Mastercard en la esquina inferior izquierda
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12.0), // Ajuste según sea necesario
              child: Image.asset('assets/images/master_card.png', width: 80),
            ),
          ),
          // El resto de tus widgets como el saldo y el campo de texto aquí
          // Asegúrate de que están correctamente posicionados y no se superponen con los nuevos elementos
          // Puedes necesitar usar más Widgets Align o ajustar el padding de los elementos
        ],
      ),
    );
  }
}