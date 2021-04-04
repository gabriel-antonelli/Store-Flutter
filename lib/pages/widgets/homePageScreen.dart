import 'package:date_util/date_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

countToCloseDay() {
  int today = new DateTime.now().day;

  if (today != 15) {
    if (today < 15) {
      today = 15 - today;
      return today.toString();
    }
    if (today > 15) {
      var dt = new DateTime.now();
      var month = dt.month;
      var year = dt.year;
      int daysInMonth = new DateUtil().daysInMonth(month, year);
      int remainDays = daysInMonth - today;
      today = remainDays + 15;
      return today.toString();
    }
  } else {
    return '0';
  }
}

class HomePageState extends State<HomePageScreen> {
  static TextStyle optionStyle = GoogleFonts.montserrat(
      textStyle: TextStyle(color: Colors.black, fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: MediaQuery.of(context).size.height / 2.2,
              width: double.maxFinite,
              child: Card(
                shadowColor: Colors.greenAccent,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.attach_money_outlined,
                        size: 60,
                        color: Colors.greenAccent[700],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Total do mês: R\$2000",
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                      ),
                      Divider(
                        height: 0,
                        color: Colors.greenAccent[700],
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Dinheiro: R\$555,00", style: optionStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Débito: R\$555,00", style: optionStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Crédito: R\$555,00", style: optionStyle),
                      ),
                      Divider(
                        color: Colors.cyan[800],
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Dias até o fechamento: ",
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    color: Colors.black, fontSize: 25))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(countToCloseDay(),
                            style: GoogleFonts.bebasNeue(
                                textStyle: TextStyle(
                                    color: Colors.teal[300],
                                    fontSize: 70,
                                    fontWeight: FontWeight.w600))),
                      )
                    ],
                  ),
                ),
              )),
          Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: MediaQuery.of(context).size.height / 2.6,
              width: double.maxFinite,
              child: Card(
                shadowColor: Colors.lightBlue.shade500,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.monetization_on,
                              size: 60,
                              color: Colors.lightBlue.shade500,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Total a receber: R\$20.000,00",
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23))),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Carlos: R\$555,00| 20/10/2020",
                              style: optionStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Débora: R\$555,00| 20/10/2020",
                              style: optionStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Gabriel: R\$555,00| 20/10/2020",
                              style: optionStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Joana: R\$555,00| 20/10/2020",
                              style: optionStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("123456789123456: R\$1055,00| 20/10/2020",
                              style: optionStyle),
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ]);
  }
}
