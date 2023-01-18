import 'package:flutter/material.dart';
import 'package:flutter_lesson/global_key/counter_widget.dart';

class globalKeyMain extends StatelessWidget {
  globalKeyMain({super.key});
  final GlobalKey counterKey = GlobalKey<CounterWidgetState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Key',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Global Key'),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange.shade400,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back))
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This Counter:',
                style: Theme.of(context).textTheme.headline4,
              ),
              CounterWidget(
                key: counterKey,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final state = counterKey.currentState as CounterWidgetState;
            state.incrementCounter();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
