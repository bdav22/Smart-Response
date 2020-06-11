import 'package:flutter/material.dart';
import 'package:youtubedrawer/FirstPage.dart';
import 'package:youtubedrawer/Settings.dart';
import 'package:youtubedrawer/chat.dart';
import 'package:youtubedrawer/home.dart';
import 'package:youtubedrawer/main.dart';
import 'package:youtubedrawer/ICS.dart';






class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

        switch (settings.name) {
          case '/chat':
            return MaterialPageRoute(builder: (_) => Chat());

          case'/FirstPage':
            return MaterialPageRoute(builder: (_) => FirstPage());


          case '/ICS':
      return MaterialPageRoute(builder: (_) => ICS());

          case '/Settings':
            return MaterialPageRoute(builder: (_) => Settings());









            if (args is String) {
              return MaterialPageRoute(
                builder: (_) => ICS(),
              );
            }


            if (args is String) {
              return MaterialPageRoute(
                builder: (_) => Chat(),
              );
            }


        }
  }
}

