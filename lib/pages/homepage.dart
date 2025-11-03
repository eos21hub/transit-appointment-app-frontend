import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nextup/pages/alert.dart';
import 'package:nextup/pages/profile.dart';
import 'package:nextup/pages/services.dart';
import 'package:nextup/pages/transport.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _pages = [
    ServicesPage(),
    TransportPage(), 
    AlertPage(),
    ProfilePaage(),
    ];
  int _selectedIndex = 0;
    void _navigateCurvedButtomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        onTap: _navigateCurvedButtomBar,
        color: Color.fromARGB(255, 163, 251, 197),
        backgroundColor: Colors.white,
        buttonBackgroundColor: const Color.fromARGB(255, 188, 247, 189),
        animationDuration: const Duration(microseconds: 550),
        animationCurve: Curves.easeOutBack,
        items: [
          Icon(Icons.spa),
          Icon(Icons.directions_bus_outlined),
          Icon(Icons.notification_add_outlined),
          Icon(Icons.person_outline_outlined),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
