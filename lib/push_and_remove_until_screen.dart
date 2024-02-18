import 'package:flutter/material.dart';

class PushAndRemoveUntilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новый экран (Push and Remove Until)'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
          child: Text('Вернуться на главный экран'),
        ),
      ),
    );
  }
}
