import 'package:flutter/material.dart';

class PushReplacementNamedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новый экран (Push Replacement Named)'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/new_screen');
          },
          child: Text('Перейти на новый экран '),
        ),
      ),
    );
  }
}
