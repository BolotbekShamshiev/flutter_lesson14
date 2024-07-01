import 'package:flutter/material.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  List<Widget> screenList = [];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 10,
        type: BottomNavigationBarType.shifting,
        // fixedColor: Colors.red,
        // backgroundColor: Colors.green,
        iconSize: 38,
        selectedItemColor: Colors
            .green, // нельзя использовать с фиксед колор, надо один из них вырубить
        unselectedItemColor: Colors.purple,
        selectedIconTheme: IconThemeData(
          size: 40,
          color: Colors.pink,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
          color: Colors.black,
        ),
        selectedFontSize: 40,
        unselectedFontSize: 20,
        selectedLabelStyle: TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,

        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Colors.blue,
              // size: 60,
            ),
            label: 'Home',
            // activeIcon: Icon(
            //   Icons.abc,
            //   // color: Colors.green,
            //   // size: 20,
            // ),
            // backgroundColor: Colors.green,
            tooltip: 'test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
