import 'package:flutter/material.dart';
import './nav_color_pages/main_nav.dart' as mainNavs;
import './route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MainPage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Card(
            color: Colors.amber.shade400,
            child: ListTile(
              leading: Icon(Icons.color_lens, color: Colors.white, size: 40),
              title: Text('Home'),
              subtitle: Text('Home Page'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {Navigator.pushNamed(context, '/ColorNav')},
            ),
          ),
          Card(
            color: Colors.yellow.shade400,
            child: ListTile(
              leading: Icon(Icons.error_outline, color: Colors.white, size: 40),
              title: Text('This is for Error Page'),
              subtitle: Text('This is for Error Page'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {Navigator.of(context).pushNamed('/sea')},
            ),
          ),
          Card(
            color: Colors.purple.shade400,
            child: ListTile(
              leading:
                  Icon(Icons.new_label_outlined, color: Colors.white, size: 40),
              title: Text('New Data with ModalRoute'),
              subtitle:
                  Text('ModalRoute ile yeni sayfalara nasıl veri gönderilir.'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {
                Navigator.of(context)
                    .pushNamed('/ogrenciListesi', arguments: 80)
              },
            ),
          ),
        ],
      ),
    );
  }
}
