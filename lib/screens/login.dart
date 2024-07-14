import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //varibale
  int selectedIndex = 0;

  //List
  List screens = [
    const Column(
      children: [
        Text('Home Screen'),
      ],
    ),
    const Column(
      children: [Text('About Screen')],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Home'),
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          print(selectedIndex);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'About'),
        ],
      ),
    );
  }
}
