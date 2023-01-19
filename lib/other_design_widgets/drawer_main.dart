import 'package:flutter/material.dart';
import 'package:flutter_lesson/other_design_widgets/inkwell_main.dart';
import 'package:flutter_lesson/other_design_widgets/bottom_nav_bar_page.dart';

import 'package:flutter_lesson/other_design_widgets/page_view_widget.dart';

class DrawerMain extends StatelessWidget {
  const DrawerMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Exit'),
              onTap: () =>
                  {Navigator.popUntil(context, ModalRoute.withName('/'))},
            ),
            ListTile(
              title: const Text('İnkwell'),
              onTap: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyApp()))
              },
            ),
            ListTile(
              title: Text('Bottom Navigation Bar'),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BottomNavBarMain()))
              },
            ),
            ListTile(
              title: Text('Page View'),
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PageViewWidgetMain()))
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
