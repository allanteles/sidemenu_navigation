import 'package:flutter/material.dart';
import 'package:sidemenu_navigation/app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu de Navegação Lateral',
      // This is the theme of your application.
      debugShowCheckedModeBanner: false,
      //Alguma coisa comentada
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
