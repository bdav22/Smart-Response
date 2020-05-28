import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtubedrawer/auth.dart';
import 'package:youtubedrawer/user.dart';
import 'package:youtubedrawer/wrapper.dart';




void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      child: StreamProvider<User>.value(
        value: AuthService().user,
        child: MaterialApp(
          home: Wrapper(),
        ),
      ),
    );
  }
}




