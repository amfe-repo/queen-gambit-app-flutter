import 'package:flutter/material.dart';
import 'package:queen_gambit/pages/AboutPage.dart';
import 'package:queen_gambit/pages/CharPage.dart';
import 'package:queen_gambit/pages/CharactersPage.dart';
import 'package:queen_gambit/pages/ForMyLife.dart';
import 'package:queen_gambit/pages/HireMe.dart';
import 'package:queen_gambit/pages/HomePage.dart';

import './routes.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_HOME:
        return MaterialPageRoute(builder: (_) => MyHomePage());

      case ROUTE_CHARACTERS:
        return MaterialPageRoute(builder: (_) => CharactersPage());

      case ROUTE_CHAR:
        return MaterialPageRoute(builder: (_) => CharPage());

      case ROUTE_MY_LIFE:
        return MaterialPageRoute(builder: (_) => ForMyLife());

      case ROUTE_HIRE_ME:
        return MaterialPageRoute(builder: (_) => HireMe());

      case ROUTE_ABOUT:
        return MaterialPageRoute(builder: (_) => AboutPage());

      default:
        return MaterialPageRoute(builder: (_) => MyHomePage());
    }
  }
}
