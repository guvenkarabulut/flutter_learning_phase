import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lesson/bloc/bloc_counter/counter_bloc.dart';
import 'package:flutter_lesson/bloc/cubit_counter/counter_cubit.dart';
import './route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Material App',
        home: MainPage(),
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
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
                  Text('ModalRoute ile yeni sayfalara nas??l veri g??nderilir.'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {
                Navigator.of(context)
                    .pushNamed('/ogrenciListesi', arguments: 80)
              },
            ),
          ),
          Card(
            color: Colors.pink.shade400,
            child: ListTile(
              leading: Icon(Icons.input, color: Colors.white, size: 40),
              title: Text('New Data with ModalRoute'),
              subtitle: Text('Input Widgets'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {
                Navigator.of(context).pushNamed('/inputWidgets', arguments: 80)
              },
            ),
          ),
          Card(
            color: Colors.deepOrange.shade400,
            child: ListTile(
              leading: Icon(Icons.construction, color: Colors.white, size: 40),
              title: Text('Global Key'),
              subtitle: Text('Counter App'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {
                Navigator.of(context).pushNamed('/globalKey', arguments: 80)
              },
            ),
          ),
          Card(
            color: Colors.teal.shade400,
            child: ListTile(
              leading: Icon(Icons.draw, color: Colors.white, size: 40),
              title: Text('Other Design Widgets'),
              subtitle: Text('Drawer'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {
                Navigator.of(context).pushNamed('/drawerMain', arguments: 80)
              },
            ),
          ),
          Card(
            color: Colors.blue.shade400,
            child: ListTile(
              leading:
                  Icon(Icons.dark_mode_sharp, color: Colors.white, size: 40),
              title: Text('??rnek 1'),
              subtitle: Text(
                  'https://dribbble.com/shots/20423228-Clamben-Fashion-Store-Mobile-App'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () =>
                  {Navigator.of(context).pushNamed('/ornekBir', arguments: 80)},
            ),
          ),
          Card(
            color: Colors.cyan.shade400,
            child: ListTile(
              leading: Icon(Icons.data_object, color: Colors.white, size: 40),
              title: Text('Data Operations'),
              subtitle: Text('HTTP Requests'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {
                Navigator.of(context)
                    .pushNamed('/dataOperations', arguments: 80)
              },
            ),
          ),
          Card(
            color: Colors.green.shade400,
            child: ListTile(
              leading:
                  Icon(Icons.stacked_bar_chart, color: Colors.white, size: 40),
              title: Text('Stack'),
              subtitle: Text('Stack Widgets'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {
                Navigator.of(context).pushNamed('/stackWidget', arguments: 80)
              },
            ),
          ),
          Card(
            color: Colors.indigo.shade400,
            child: ListTile(
              leading: Icon(Icons.key, color: Colors.white, size: 40),
              title: Text('Key'),
              subtitle: Text('Key Example'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () => {
                Navigator.of(context).pushNamed('/keyExample', arguments: 80)
              },
            ),
          ),
          Card(
            color: Colors.red.shade400,
            child: ListTile(
              leading:
                  Icon(Icons.star_rate_outlined, color: Colors.white, size: 40),
              title: Text('Bloc'),
              subtitle: Text('Bloc and Cubit'),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
              onTap: () =>
                  {Navigator.of(context).pushNamed('/bloc', arguments: 80)},
            ),
          ),
        ],
      ),
    );
  }
}
