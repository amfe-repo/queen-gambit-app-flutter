import 'package:flutter/material.dart';
import 'package:queen_gambit/routes/router.dart';
import 'package:queen_gambit/routes/routes.dart';

class CharPage extends StatelessWidget {
  Map<int, Map<String, String>> CreateCharacters() {
    return {
      0: {
        "Beth Harmon":
            "Beth Harmon queda huérfana a los ocho años cuando su madre muere en un accidente automovilístico. Al crecer en un orfanato en Kentucky, el custodio, el Sr. Shaibel, le enseña ajedrez y pronto se convierte en un prodigio del ajedrez . Mientras está en el orfanato, lucha contra una adicción a los tranquilizantes . "
      },
      1: {
        "Benny Watts":
            "Benjamin Watts es un prodigio del ajedrez arrogante, popular y muy inteligente y un personaje principal en la serie de Netflix, The Queen's Gambit . Inicialmente , el rival más prominente de Beth Harmon , luego se convierte en su mentor, amigo cercano e interés amoroso."
      },
      2: {
        "D.L Townes":
            "DL Townes es periodista, fotógrafo y ávido jugador de ajedrez. Trabaja para Chess Review como fotoperiodista y para Lexington Herald-Leader como editor asociado; ocupaciones que le han permitido seguir el viaje de Harmon a través de los Estados Unidos y hasta Moscú, Rusia. Un antiguo interés amoroso no correspondido, Townes es probablemente el amigo más cercano de Harmon y está a la par de la familia."
      }
    };
  }

  const CharPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context)!.settings.arguments);
    //int index = ModalRoute.of(context)!.settings.arguments as int;
    var data = CreateCharacters();
    var res = data[0] ?? {"Error": "Not exist"};
    var images = ["beth.jpg", "benny.jpeg", "townes.jpg"];

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
              children: <Widget>[
                Container(
                  child: Image.asset("assets/images/" + images[0]),
                ),
                Container(
                  child: Text("${res.keys.first}"),
                ),
                Container(
                  child: Text("${res.entries.first.value}"),
                ),
                Container(
                    child: ElevatedButton(
                  child: Text("Volver"),
                  onPressed: () {
                    Navigator.pushNamed(context, ROUTE_CHARACTERS);
                  },
                ))
              ],
            )),
          ),
        ));
  }
}
