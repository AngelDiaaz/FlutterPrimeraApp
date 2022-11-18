import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName:
                Text("F1-APP", style: TextStyle(color: Colors.lightBlueAccent)),
            accountEmail: Text("informes@gmail.com",
                style: TextStyle(color: Colors.lightBlueAccent)),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("assets/images/f1.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.purple,
            child: const ListTile(
              title: Text(
                "Coches",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: Text("Calendario"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Horario"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Pilotos"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Escuderias"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
