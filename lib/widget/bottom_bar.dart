import 'package:flutter/material.dart';
import 'package:zomato_ui/home/historypage.dart';
import 'package:zomato_ui/home/homepage.dart';
import 'package:zomato_ui/home/money_page.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}
 

 

class _BottombarState extends State<Bottombar> {
  @override
  Widget build(BuildContext context) {
    final tabs = [const Homepage(),
    const HistoryPage(),
    const moneypage()];
    int selectedindex =  0;
    
    return Scaffold(
      body: tabs[selectedindex],

    bottomNavigationBar: BottomNavigationBar(
      elevation: 0,
    showSelectedLabels: true,
      selectedLabelStyle: const TextStyle(color: Colors.red),
     selectedItemColor: Colors.red,
    currentIndex: selectedindex,
     type: BottomNavigationBarType.fixed,
     selectedIconTheme: const IconThemeData(color: Colors.red),
     onTap: (int index) {
        setState(() {
         selectedindex = index; 
          });
     },
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.delivery_dining_rounded),label: 'Delivery'),
      BottomNavigationBarItem(icon: Icon(Icons.dinner_dining),label: 'History'),
      BottomNavigationBarItem(icon: Icon(Icons.wallet),label: 'Money'),
    ],
    )
     );
    
  }
}