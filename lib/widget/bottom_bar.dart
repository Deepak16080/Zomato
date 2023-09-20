import 'package:flutter/material.dart';
import 'package:zomato_ui/home/historypage.dart';
import 'package:zomato_ui/home/homepage.dart';
import 'package:zomato_ui/home/money_page.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}
 

 

class _bottombarState extends State<bottombar> {
  @override
  Widget build(BuildContext context) {
    final tabs = [const Homepage(),
    const HistoryPage(),
    const moneypage()];
    int selectedindex =  0;
    
    return Scaffold(
      body: tabs[selectedindex],

    bottomNavigationBar: BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.delivery_dining_rounded),label: 'Delivery'),
      BottomNavigationBarItem(icon: Icon(Icons.dinner_dining),label: 'History'),
      BottomNavigationBarItem(icon: Icon(Icons.wallet),label: 'Money'),
    ],
    elevation: 0,
    showSelectedLabels: true,
      selectedLabelStyle: TextStyle(color: Colors.red),
     selectedItemColor: Colors.red,
    currentIndex: selectedindex,
     type: BottomNavigationBarType.fixed,
     selectedIconTheme: const IconThemeData(color: Colors.red),
     onTap: (int index) {
        setState(() {
         tabs[index];
         selectedindex = index; 
          });
     },)
     );
    
  }
}