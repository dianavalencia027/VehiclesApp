import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _showlogo(),
            _showEmail(),
          ],
        )
      ),
    );
  }

  Widget _showlogo() {
    return Image(
      image: AssetImage('assets/vehicles_logo.png'),
      width: 300,
    );
  }

  Widget _showEmail() {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Ingresa tu Email...',
          labelText: 'Email',
          suffixIcon: Icon(Icons.email),
          border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10),
          ),
        ),
        onChanged: (value) {
          _email = value;
          print(_email);
        },
      ),
    );
  }
}