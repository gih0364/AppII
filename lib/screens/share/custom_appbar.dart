import 'package:flutter/material.dart';

AppBar customAppBar(String appTitle) {
  return AppBar(
    title: Text(appTitle),
    actions: [
      IconButton(
        color:  Color.fromARGB(255, 0, 0, 0),
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
      IconButton(
        color:  Color.fromARGB(255, 0, 0, 0),
        onPressed: () {},
        icon: const Icon(Icons.shopping_cart),
      ),
      PopupMenuButton(
        itemBuilder: (context) => [
          const PopupMenuItem(
            child: Text('Meu perfil'),
          ),
          const PopupMenuItem(
            child: Text('Configurações'),
          ),
        ],
      ),
      FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      BottomAppBar(
        color:  Color.fromARGB(255, 255, 255, 255),
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.view_list),
              color: const Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                // Handle home button press
              },
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              color: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                // Handle cart button press
              },
            ),
          ]
        )
      )
    ]
  );
}
