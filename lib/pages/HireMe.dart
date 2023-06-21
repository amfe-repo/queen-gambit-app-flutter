import 'package:flutter/material.dart';
import 'package:queen_gambit/routes/router.dart';
import 'package:queen_gambit/widgets/BottomNavigationBarCustom.dart';

class HireMe extends StatelessWidget {
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
                      child: Image.asset("assets/images/me.png")),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text("Angel Miguel Fernandez Salazara"),
                  ),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text("Desarrollador de Software")),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text("ang_fersar@outlook.es")),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBarCustom(),
        ));
  }
}
