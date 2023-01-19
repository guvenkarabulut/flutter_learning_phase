import 'package:flutter/material.dart';

class PageViewWidgetMain extends StatefulWidget {
  const PageViewWidgetMain({super.key});

  @override
  State<PageViewWidgetMain> createState() => _PageViewWidgetMainState();
}

class _PageViewWidgetMainState extends State<PageViewWidgetMain> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      onPageChanged: (value) {
        print(value);
      },
      children: [
        myScaffoldWidget(
            appBarTitle: 'Title 1',
            color: Colors.amber,
            content: 'Content 1' * 5),
        myScaffoldWidget(
            appBarTitle: 'Title 2',
            color: Colors.blue,
            content: 'Content 2' * 5),
        myScaffoldWidget(
            appBarTitle: 'Title 3',
            color: Colors.green,
            content: 'Content 3' * 5),
      ],
    );
  }
}

class myScaffoldWidget extends StatelessWidget {
  const myScaffoldWidget({
    Key? key,
    required String appBarTitle,
    required Color color,
    required String content,
  })  : _appBarTitle = appBarTitle,
        _color = color,
        _content = content,
        super(key: key);

  final String _appBarTitle;
  final Color _color;
  final String _content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Container(
        color: _color,
        child: Center(
          child: Text(_content,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
