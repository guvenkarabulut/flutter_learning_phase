import 'package:flutter/material.dart';

class BottomNavBarMain extends StatefulWidget {
  const BottomNavBarMain({super.key});

  @override
  State<BottomNavBarMain> createState() => _BottomNavBarMainState();
}

class _BottomNavBarMainState extends State<BottomNavBarMain> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text('Bottom Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          home(),
          search(),
        ],
      ),
      body: _currentIndex == 0 ? const Home() : Search(),
    );
  }

  BottomNavigationBarItem search() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
      backgroundColor: Colors.teal,
    );
  }

  BottomNavigationBarItem home() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      backgroundColor: Colors.teal,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: myTextWidget(searchText: 'Home')),
    );
  }
}

class Search extends StatelessWidget {
  Search({super.key});
  String _searchText = 'Search';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: myTextWidget(searchText: _searchText)),
    );
  }
}

class myTextWidget extends StatelessWidget {
  const myTextWidget({
    Key? key,
    required String searchText,
  })  : _searchText = searchText,
        super(key: key);

  final String _searchText;

  @override
  Widget build(BuildContext context) {
    return Text(_searchText,
        style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.green.shade600,
              fontWeight: FontWeight.bold,
            ));
  }
}
