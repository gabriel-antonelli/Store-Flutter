import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_flutter/pages/widgets/addPage.dart';
import 'package:store_flutter/pages/widgets/homePageScreen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final fb = FirebaseDatabase.instance;
  final myController = TextEditingController();
  final List<Widget> selectPage = 
    [
    HomePageScreen(), 
    null,
    AddPage()
    ];
  int selectedIndex = 0;
  
void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    print(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: selectPage[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_work),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: 'Contas a receber',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.addchart_rounded),
              label: 'Adicionar',
            ),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        )
    );
  }
}
