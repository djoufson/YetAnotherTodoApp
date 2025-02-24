import 'package:app/data/notifiers.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.check), label: 'Tasks'),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          selectedIndex: selectedPage,
          onDestinationSelected: (value) {
            selectedPageNotifier.value = value;
          },
        );
      },
    );
  }
}
