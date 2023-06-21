import 'package:flutter/material.dart';
import 'package:queen_gambit/routes/router.dart';
import 'package:queen_gambit/routes/routes.dart';
import './pages/HomePage.dart';
import './pages/CharactersPage.dart';
import './pages/CharPage.dart';
import './pages/ForMyLife.dart';
import './pages/HireMe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: ROUTE_HOME,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
