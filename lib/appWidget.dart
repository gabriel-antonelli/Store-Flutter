import 'package:flutter/material.dart';

import 'homePage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.from(colorScheme: 
    ColorScheme.light(
      primary: Colors.cyan, 
      onSecondary: Colors.white, 
      secondary: Colors.grey)), 
      home: Home());
  }
}
