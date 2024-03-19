import 'package:flutter/material.dart';
import 'package:safesuit_bank/core/presentation/screers/transfer.dart';
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
                  context, MaterialPageRoute(builder: (context) => Trans()));
            }),
        ListTile(
          leading: const Icon(Icons.arrow_back),
          title: const Text('Recibir'),
        ),
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
