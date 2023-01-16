import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'green_page.dart';
import 'purple_page.dart';
import 'red_page.dart';
import 'yellow_page.dart';
import 'orange_page.dart';

void mainNav() {
  runApp(const MyNavColorApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyNavColorApp extends StatelessWidget {
  const MyNavColorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        (Navigator.of(context).canPop())
            ? Navigator.of(context).pop()
            : print('pop yapılabilir değil');
        return Future.value(false);
      },
      child: MaterialApp(
        builder: EasyLoading.init(),
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnaSayfa(),
        routes: {
          '/redPage': (context) => RedPage(),
          '/greenPage': (context) => GreenPage(),
          '/purplePage': (context) => PurplePage(),
          '/yellowPage': (context) => YellowPage(),
          '/orangePage': (context) => OrangePage(),
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Böyle bir sayfa yok'),
                    ),
                    body: Center(
                      child: Text('Böyle bir sayfa yok'),
                    ),
                  ));
        },
      ),
    );
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Böyle bir sayfa yok'),
    ));
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return myScaffold(context);
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                int? _gelenSayi = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RedPage()));
                print('Anasayfamdan $_gelenSayi');
              },
              child: Text('Kırmızı Sayfaya Git And'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
            ElevatedButton(
              onPressed: () async {
                int? _gelenSayi = await Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RedPage()))
                    .then((value) {
                  print('Anasayfamdan Then Kullanarak $value');
                });
              },
              child: Text('Kırmızı Sayfaya Git IOS'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade400),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text('Maybe Pop Kullanımı'),
            ),
            ElevatedButton(
              onPressed: () {
                (Navigator.of(context).canPop() == true)
                    ? Navigator.of(context).pop()
                    : print('Can Pop False');
              },
              child: Text('Can Pop Kullanımı'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orange.shade500),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => OrangePage()));
              },
              child: Text('Push Replacement Kullanımı'),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    color: Colors.red.shade300,
                    child: ListTile(
                      leading: Icon(Icons.flutter_dash,
                          color: Colors.white, size: 30),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 30),
                      title: Text('pushNamed ile kırmızı sayfaya gitme',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RedPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Card(
                    color: Colors.green.shade300,
                    child: ListTile(
                      leading: Icon(Icons.flutter_dash,
                          color: Colors.white, size: 30),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 30),
                      title: Text('pushNamed ile yeşil sayfaya gitme',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => GreenPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Card(
                    color: Colors.purple.shade300,
                    child: ListTile(
                      leading: Icon(Icons.flutter_dash,
                          color: Colors.white, size: 30),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 30),
                      title: Text('pushNamed ile mor sayfaya gitme',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).pushNamed('/purplePage');
                      },
                    ),
                  ),
                  Card(
                    color: Colors.yellow.shade300,
                    child: ListTile(
                      leading: Icon(Icons.flutter_dash,
                          color: Colors.white, size: 30),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 30),
                      title: Text('pushNamed ile sarı sayfaya gitme',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).pushNamed('/yellowPage');
                      },
                    ),
                  ),
                  Card(
                    color: Colors.orange.shade300,
                    child: ListTile(
                      leading: Icon(Icons.flutter_dash,
                          color: Colors.white, size: 30),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 30),
                      title: Text('pushNamed ile turuncu sayfaya gitme',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).pushNamed('/orangePage');
                      },
                    ),
                  ),
                  Card(
                    color: Colors.black,
                    child: ListTile(
                      leading: Icon(Icons.flutter_dash,
                          color: Colors.white, size: 30),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 30),
                      title: Text('GERİ GİT',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
