// tinder_home.dart
import 'package:flutter/material.dart';
import 'profilescreen.dart';
import 'tinder_card_stack.dart';

class TinderHomePage extends StatefulWidget {
  @override
  _TinderHomePageState createState() => _TinderHomePageState();
}

class _TinderHomePageState extends State<TinderHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: _selectedIndex == 0
            ? TinderCardStack()
            : _selectedIndex == 1
                ? Text('Messages',
                    style: TextStyle(color: Colors.white, fontSize: 24))
                : ProfileScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
