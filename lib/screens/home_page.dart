import 'package:flutter/material.dart';
import '../widgets/home_grid.dart';
import '../widgets/settings_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    List<Widget> pages = [
      const HomeGrid(),
      const SettingsList(),
    ];

    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: screenHeight * 0.15,
        child: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon((Icons.home)),
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              selectedIcon: Icon((Icons.settings)),
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            )
          ],
        ),
      ),
    );
  }
}