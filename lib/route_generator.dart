import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson/ogrenci_listesi/ogrenci_detay.dart';
import './nav_color_pages/main_nav.dart' as mainNavs;
import './ogrenci_listesi/ogrenci_listesi.dart';
import './ogrenci_listesi/ogrenci_detay.dart';
import './main.dart';

class RouteGenerator {
  _routeGenerator(Widget gidilecekSayfa, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          settings: settings, builder: (_) => gidilecekSayfa);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          settings: settings, builder: (_) => gidilecekSayfa);
    }
  }

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return RouteGenerator()._routeGenerator(MainPage(), settings);
      case '/ColorNav':
        return RouteGenerator()._routeGenerator(mainNavs.AnaSayfa(), settings);
      case '/ogrenciListesi':
        return RouteGenerator()._routeGenerator(OgrenciListesi(), settings);

      case '/ogrenciDetay':
        return RouteGenerator()._routeGenerator(
            OgrenciDetay(secilenOgrenci: settings.arguments as Ogrenci),
            settings);
      default:
        return RouteGenerator()._routeGenerator(mainNavs.ErrorPage(), settings);
    }
  }
}
