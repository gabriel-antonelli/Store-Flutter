import 'package:flutter/material.dart';

import '../homePage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Controle de Caixa",
      theme: ThemeData(colorScheme: 
    ColorScheme.light(
      primary: Colors.cyan, 
      onSecondary: Colors.white, 
      secondary: Colors.white,)
      ), 
      home: Home());
  }
}