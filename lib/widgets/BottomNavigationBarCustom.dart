import 'package:flutter/material.dart';
import 'package:queen_gambit/routes/routes.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(
        icon: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ROUTE_CHARACTERS);
            },
            child: const Icon(Icons.abc)),
        label: "Personajes",
      ),
      BottomNavigationBarItem(
        icon: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ROUTE_ABOUT);
            },
            child: const Icon(Icons.abc)),
        label: "Acerca de",
      ),
      BottomNavigationBarItem(
        icon: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ROUTE_MY_LIFE);
            },
            child: const Icon(Icons.abc)),
        label: "En mi vida",
      ),
      BottomNavigationBarItem(
        icon: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ROUTE_CHARACTERS);
            },
            child: const Icon(Icons.abc)),
        label: "Momentos",
      ),
      BottomNavigationBarItem(
        icon: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ROUTE_HIRE_ME);
            },
            child: const Icon(Icons.abc)),
        label: "Contratame",
      ),
    ]);
  }
}
