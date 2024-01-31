import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../screen/calls_screen/calls_screen.dart';
import '../screen/contacts_screen/contacts_screen.dart';
import '../screen/home_screen/home_screen.dart';
import '../screen/messages_screen/messages_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  final List<Widget> _pages = const [
    HomeScreen(),
    CallsScreen(),
    MessagesScreen(),
    ContactsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          color: const Color(0xFFF5F7FA),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GNav(
                tabBackgroundColor: const Color(0xFFBFFF07),
                padding: const EdgeInsets.all(10),
                gap: 4,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    iconColor: Color(0xFF8693A3),
                  ),
                  GButton(
                    icon: Icons.phone_android,
                    text: 'Calls',
                    iconColor: Color(0xFF8693A3),
                  ),
                  GButton(
                    icon: Icons.sms_outlined,
                    text: 'Messages',
                    iconColor: Color(0xFF8693A3),
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Contacts',
                    iconColor: Color(0xFF8693A3),
                  )
                ]
            ),
          ),
        )
    );
  }
}
