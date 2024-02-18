import 'package:flutter/material.dart';

class PopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Предыдущий экран (Pop)'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Вернуться на главный экран'),
        ),
      ),
    );
  }
}
