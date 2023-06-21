import 'package:flutter/material.dart';
import 'package:queen_gambit/routes/router.dart';
import 'package:queen_gambit/widgets/BottomNavigationBarCustom.dart';

class ForMyLife extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: MyRouter.generateRoute,
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
                      child: const Text("Influencia de esta serie en mi vida")),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Esta serie fue importante para mi puesto que trata de uno de mis juegos de mesa favorito, por lo que me inspiro a jugar mas, tambien la serie estaba en ingles lo que me ayudo a mejorar mi nivel en este idioma."),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBarCustom(),
        ));
  }
}
