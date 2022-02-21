import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main/main_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color.fromRGBO(3, 37, 65, 1)),
        primarySwatch: Colors.blue,
      ),
      home: AuthWidget(),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main': (context) => MainWidget(),
      },
    );
  }
}
