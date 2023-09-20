import 'package:flutter/material.dart';
class moneypage extends StatefulWidget {
  const moneypage({super.key});

  @override
  State<moneypage> createState() => _moneypageState();
}

class _moneypageState extends State<moneypage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Money'),),
    );
  }
}