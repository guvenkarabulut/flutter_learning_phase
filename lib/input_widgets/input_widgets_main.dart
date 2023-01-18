import 'package:flutter/material.dart';
import './text_field.dart';
import './controller_focusnode.dart';
import './text_form_field.dart';

class InputWidgetsMain extends StatelessWidget {
  const InputWidgetsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Widgets',
      home: MyInputsHomePage(),
    );
  }
}

class MyInputsHomePage extends StatelessWidget {
  const MyInputsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Widgets'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              color: Colors.amber.shade400,
              child: ListTile(
                leading: Icon(Icons.text_fields, color: Colors.white, size: 40),
                title: Text('Text Field'),
                subtitle: Text('Text Field'),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 40),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextFieldExample(),
                    ),
                  ),
                },
              ),
            ),
            Card(
              color: Colors.teal.shade400,
              child: ListTile(
                leading: Icon(Icons.control_camera_sharp,
                    color: Colors.white, size: 40),
                title: Text('Controller'),
                subtitle: Text('Controller Focus Node'),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 40),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ControllerFocusNode(),
                    ),
                  ),
                },
              ),
            ),
            Card(
              color: Colors.pink.shade400,
              child: ListTile(
                leading: Icon(Icons.text_fields, color: Colors.white, size: 40),
                title: Text('Text Form Field'),
                subtitle: Text('Text Form Field'),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 40),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TectFormFieldExample(),
                    ),
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
