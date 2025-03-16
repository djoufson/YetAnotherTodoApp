import 'package:app/data/notifiers.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  void setTheme() {
    isDarkModeThemeNotifier.value = !isDarkModeThemeNotifier.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            spacing: 10.0,
            children: [
              Text('Choose the app Theme'),
              ElevatedButton(
                onPressed: () => setTheme(),
                child: ValueListenableBuilder(
                  valueListenable: isDarkModeThemeNotifier,
                  builder: (context, value, child) {
                    return value
                        ? Icon(Icons.light_mode)
                        : Icon(Icons.dark_mode);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
