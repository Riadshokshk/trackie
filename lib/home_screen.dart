import 'package:flutter/material.dart';
import 'package:trackie_app/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:trackie_app/body_model_screen.dart';

class HabitHomePage extends StatefulWidget {
  const HabitHomePage({super.key});

  @override
  State<HabitHomePage> createState() => _HabitHomePageState();
}

class _HabitHomePageState extends State<HabitHomePage> {
  final _controller = NotchBottomBarController();
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trackie 🐇'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text('Trackie 🐇',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BodyModelScreen()),
                );
              },
            ),
          ],
        ),
      ),

      // PAGE VIEW
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),

      // NOTCH BOTTOM BAR
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        bottomBarItems: const [
          BottomBarItem(
             inActiveItem: Icon(Icons.home, color: Colors.white),
             activeItem: Icon(Icons.home, color: Colors.teal),
             itemLabel: 'Home',
               ),
          BottomBarItem(
             inActiveItem: Icon(Icons.settings, color: Colors.white),
             activeItem: Icon(Icons.settings, color: Colors.teal),
             itemLabel: 'Settings',
               ),
           ],
            onTap: (index) {
           setState(() {
            _selectedIndex = index;
           _pageController.jumpToPage(index);
           });
         },
         color: const Color(0xFFA76BE2),      // background of bottom bar
          notchColor: Colors.teal,             // color of the notch
          kIconSize: 24.0,                     // ✅ NEW: required icon size
          kBottomRadius: 28.0,                 // ✅ NEW: required bottom bar radius
          showLabel: false,
          removeMargins: false,
         ),

    );
  }
}

// Dummy Screens for navigation
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("🏠 Home Page", style: TextStyle(fontSize: 24)),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("⚙️ Settings Page", style: TextStyle(fontSize: 24)),
    );
  }
}
