import 'package:air_book_p3/screens/home_screen.dart';
import 'package:air_book_p3/screens/profile_screen.dart';
import 'package:air_book_p3/screens/search_screen.dart';
import 'package:air_book_p3/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
 int _selectedIndex=0;
  static final List<Widget> _widgetOptions = <Widget> [
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];
 
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFF526480),
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed, // Items i.e home,search etc will not move towards right try(comment type " Bottom... then see)
        items: const [
          /*BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),*/
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),label: 'Profile'),
        ],
      ),
    );
  }
}
