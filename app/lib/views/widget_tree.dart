import 'package:app/data/notifiers.dart';
import 'package:app/views/pages/home_page.dart';
import 'package:app/views/pages/settings_page.dart';
import 'package:app/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [HomePage(), SettingsPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),
      appBar: AppBar(title: Text('Crazy Todo')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
