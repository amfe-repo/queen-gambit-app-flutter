import 'package:flutter/material.dart';
import 'package:queen_gambit/routes/router.dart';
import 'package:queen_gambit/routes/routes.dart';
import 'package:queen_gambit/widgets/BottomNavigationBarCustom.dart';

class CharactersPage extends StatelessWidget {
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
                      child: const Text("Personajes principales")),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: () => {
                              Navigator.pushNamed(context, ROUTE_CHAR,
                                  arguments: 0)
                            },
                        child: const Text("Elizabeth Harmon")),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: () => {
                              Navigator.pushNamed(context, ROUTE_CHAR,
                                  arguments: 1)
                            },
                        child: const Text("Benny Watts")),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: () => {
                              Navigator.pushNamed(context, ROUTE_CHAR,
                                  arguments: 2)
                            },
                        child: const Text("D.L Townes")),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBarCustom(),
        ));
  }
}
