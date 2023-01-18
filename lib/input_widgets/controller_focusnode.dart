import 'package:flutter/material.dart';

class ControllerFocusNode extends StatefulWidget {
  const ControllerFocusNode({super.key});

  @override
  State<ControllerFocusNode> createState() => _ControllerFocusNodeState();
}

class _ControllerFocusNodeState extends State<ControllerFocusNode> {
  late TextEditingController _emailController;
  late FocusNode _emailFocusNode = FocusNode();
  int _maxLines = 1;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: 'guven@guven.com');
    _emailFocusNode = FocusNode();
    _emailFocusNode.addListener(() {
      if (_emailFocusNode.hasFocus) {
        setState(() {
          _maxLines = 5;
        });
      } else {
        setState(() {
          _maxLines = 1;
        });
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Controller Focus Node'),
            floating: true,
            snap: true,
            expandedHeight: 200,
            backgroundColor: Colors.teal.shade400,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Card(
                  color: Colors.teal.shade50,
                  child: ListTile(
                    title: TextField(
                      focusNode: _emailFocusNode,
                      autofocus: true,
                      controller: _emailController,
                      maxLines: _maxLines,
                      onChanged: (value) => setState(() {}),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-Mail',
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.all(20),
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        hintTextDirection: TextDirection.rtl,
                        hintStyle: TextStyle(color: Colors.grey),
                        icon: Icon(
                          Icons.airlines,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.teal.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Email: ${_emailController.text}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  color: Colors.teal.shade50,
                  child: ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.all(20),
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        hintTextDirection: TextDirection.rtl,
                        hintStyle: TextStyle(color: Colors.grey),
                        icon: Icon(
                          Icons.umbrella,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
