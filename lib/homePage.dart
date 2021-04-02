import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  String teste = checkDateTime();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white54,),
        body: Column(children: <Widget>[
      Container(
        child: Align(
            alignment: Alignment.topCenter,
            child: Text("$teste",
                style: GoogleFonts.dancingScript(
                    textStyle: TextStyle(color: Colors.cyan, fontSize: 80)))),
      ),
      Expanded(
          child: Container(
        child: Center(
            child: TextButton(
          onPressed: () {
            print("click");
          },
          child: Text("Iniciar"),
          style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.lightBlueAccent,
              textStyle: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.w500))),
        )),
      )),
    ]));
  }
}

checkDateTime() {
  int time = DateTime.now().hour;
  if (time < 12) {
    return 'Bom dia';
  }
  if (time < 18) {
    return 'Boa tarde';
  }
  return 'Boa noite';
}
