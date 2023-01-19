import 'package:flutter/material.dart';
import 'local_json.dart';

class DataOperationsPage extends StatefulWidget {
  const DataOperationsPage({super.key});

  @override
  State<DataOperationsPage> createState() => _DataOperationsPageState();
}

class _DataOperationsPageState extends State<DataOperationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Operations'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          myCardListTileWidget(
            color: Colors.deepOrange.shade300,
            icon: const Icon(Icons.home, color: Colors.white, size: 40),
            title: 'Local JSON',
            subTitle: 'Read Local JSON File',
            route: MaterialPageRoute(builder: (context) => LocalJSONPage()),
          ),
        ],
      ),
    );
  }
}

class myCardListTileWidget extends StatelessWidget {
  const myCardListTileWidget({
    Key? key,
    required Color color,
    required Icon icon,
    required String title,
    required String subTitle,
    required Route route,
  })  : _color = color,
        _icon = icon,
        _title = title,
        _subTitle = subTitle,
        _route = route,
        super(key: key);

  final Color _color;
  final Icon _icon;
  final String _title;
  final String _subTitle;
  final Route _route;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _color,
      child: ListTile(
        leading: _icon,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 5, bottom: 5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _title,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
        subtitle: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(bottom: 5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _subTitle,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
        onTap: () => {Navigator.of(context).push(_route)},
      ),
    );
  }
}
