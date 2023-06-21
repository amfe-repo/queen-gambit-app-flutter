import 'package:flutter/material.dart';
import 'package:queen_gambit/routes/routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Colors.red,
                  child: const Center(
                      child: Text(
                    "Ajedrez e idiomas",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: '',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/principal.png",
                    height: 300,
                    width: MediaQuery.of(context).size.width / 1.1,
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ROUTE_CHARACTERS);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(13.0),
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    child: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
