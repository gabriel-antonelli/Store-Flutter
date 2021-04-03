import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomMenuWidget();
  }
}

class BottomMenuWidget extends State<BottomMenu> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
