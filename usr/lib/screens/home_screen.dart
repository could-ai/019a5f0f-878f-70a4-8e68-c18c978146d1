import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/chat_screen.dart';
import 'package:couldai_user_app/screens/pay_screen.dart';
import 'package:couldai_user_app/screens/earn_screen.dart';
import 'package:couldai_user_app/screens/video_screen.dart';
import 'package:couldai_user_app/screens/market_screen.dart';

class NexoraHomeScreen extends StatefulWidget {
  const NexoraHomeScreen({super.key});

  @override
  State<NexoraHomeScreen> createState() => _NexoraHomeScreenState();
}

class _NexoraHomeScreenState extends State<NexoraHomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ChatScreen(),
    PayScreen(),
    EarnScreen(),
    VideoScreen(),
    MarketScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nexora'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Earn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Market',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
