import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
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
            child: new ListTile(
              title: Text(
                "Coches",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          new ListTile(
            title: Text("Calendario"),
            onTap: () {},
          ),
          new ListTile(
            title: Text("Horario"),
            onTap: () {},
          ),
          new ListTile(
            title: Text("Pilotos"),
            onTap: () {},
          ),
          new ListTile(
            title: Text("Escuderias"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
