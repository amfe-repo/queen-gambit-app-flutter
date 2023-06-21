import 'package:flutter/material.dart';
import 'package:queen_gambit/routes/router.dart';
import 'package:queen_gambit/routes/routes.dart';
import 'package:queen_gambit/widgets/BottomNavigationBarCustom.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: MyRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
              title: const Center(
                  child: Text(
            "GAMBITO DE DAMA APP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ))),
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text("Informacion sobre la serie:")),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Sinopsis: Durante la Guerra Fría, una huérfana con un don para el ajedrez lucha contra las adicciones mientras intenta convertirse en la mejor jugadora del mundo."),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text("Temporadas: 1"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text("Autor: Walter Tevis"),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBarCustom(),
        ));
  }
}
