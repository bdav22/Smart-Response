import 'package:flutter/material.dart';
import 'package:youtubedrawer/chat.dart';
import 'package:youtubedrawer/home.dart';
import 'package:youtubedrawer/main.dart';
import 'package:youtubedrawer/ICS.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

        switch (settings.name) {
          case '/':
      return MaterialPageRoute(builder: (_) => Home());
          case '/chat':
          case '/ICS':
          case'/google_map':


            if (args is String) {
              return MaterialPageRoute(
                builder: (_) => Chat(),
              );
            }
        }
  }
}

