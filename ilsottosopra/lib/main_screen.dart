import 'package:flutter/material.dart';
import 'package:ilsottosopra/setting.dart';
import 'package:ilsottosopra/account.dart';

import 'home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex=0;
  List<Widget> screens=[
    HomePage(),
    Setting(),
    Account(),
  ];

  void changeIndex(int index){
  setState(() {
    selectedIndex=index;
  });
  selectedIndex=index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar:AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: Center(
        child: Image.asset("lib/assets/logo.png", width: 300,
        ),
      ),
      actions: [
        
      ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        currentIndex: selectedIndex,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Impostazioni"),
        BottomNavigationBarItem(icon: Icon(Icons.add_ic_call),label: "Yambo")
      ],
      ),
      body: screens.elementAt(selectedIndex),
        
      );
      
  }
}