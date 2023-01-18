import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TectFormFieldExample extends StatefulWidget {
  const TectFormFieldExample({super.key});

  @override
  State<TectFormFieldExample> createState() => _TectFormFieldExampleState();
}

class _TectFormFieldExampleState extends State<TectFormFieldExample> {
  String _email = '';
  String _password = '';
  String _username = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Form Field'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.length < 6)
                      return 'Username must be at least 6 characters';
                    else
                      return null;
                  },
                  initialValue: 'guven07',
                  onSaved: (newValue) {
                    _username = newValue!;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.all(20),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    hintTextDirection: TextDirection.rtl,
                    hintText: 'Enter your username',
                    hintStyle: TextStyle(color: Colors.grey),
                    icon: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (value) {
                    if (!EmailValidator.validate(value!))
                      return 'Please enter a valid email address';
                    else
                      return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  initialValue: 'sea@gmail.com',
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.all(20),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    hintTextDirection: TextDirection.rtl,
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Colors.grey),
                    icon: Icon(
                      Icons.email,
                      color: Colors.blue,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.length < 6)
                      return 'Password must be at least 6 characters';
                    else
                      return null;
                  },
                  initialValue: '123456',
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.all(20),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    hintTextDirection: TextDirection.rtl,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.grey),
                    icon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        String _result =
                            'Username: $_username \n Email: $_email \n Password: $_password';
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(_result),
                          ),
                        );
                        _formKey.currentState!.reset();
                      } else {
                        print('Form is not valid');
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
