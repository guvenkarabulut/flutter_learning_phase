import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson/bloc/bloc_page.dart';
import 'package:flutter_lesson/ogrenci_listesi/ogrenci_detay.dart';
import 'package:flutter_lesson/stack_widget/stack_widget_app.dart';
import './nav_color_pages/main_nav.dart';
import './ogrenci_listesi/ogrenci_listesi.dart';
import './input_widgets/input_widgets_main.dart';
import './global_key/global_key_main.dart';
import './main.dart';
import './other_design_widgets/drawer_main.dart';
import './dribble_ornekler/ornek_1/ornek_1.page.dart';
import './data_operations/data_operations_page.dart';
import 'key_example/key_example_page.dart';

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
        return RouteGenerator()._routeGenerator(AnaSayfa(), settings);
      case '/ogrenciListesi':
        return RouteGenerator()._routeGenerator(OgrenciListesi(), settings);
      case '/inputWidgets':
        return RouteGenerator()._routeGenerator(MyInputsHomePage(), settings);
      case '/globalKey':
        return RouteGenerator()._routeGenerator(globalKeyMain(), settings);
      case '/drawerMain':
        return RouteGenerator()._routeGenerator(DrawerMain(), settings);
      case '/ornekBir':
        return RouteGenerator()._routeGenerator(OrnekBirMain(), settings);
      case '/dataOperations':
        return RouteGenerator()._routeGenerator(DataOperationsPage(), settings);
      case '/stackWidget':
        return RouteGenerator()._routeGenerator(StackWidgetApp(), settings);
      case '/keyExample':
        return RouteGenerator()._routeGenerator(KeyExamplePageMain(), settings);
      case '/bloc':
        return RouteGenerator()._routeGenerator(BlocPage(), settings);

      case '/ogrenciDetay':
        return RouteGenerator()._routeGenerator(
            OgrenciDetay(secilenOgrenci: settings.arguments as Ogrenci),
            settings);
      default:
        return RouteGenerator()._routeGenerator(ErrorPage(), settings);
    }
  }
}
