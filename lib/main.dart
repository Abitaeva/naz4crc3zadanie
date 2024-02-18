import 'package:flutter/material.dart';
import 'push_screen.dart';
import 'pop_screen.dart';
import 'push_and_remove_until_screen.dart';
import 'push_replacement_screen.dart';
import 'push_replacement_named_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/new_screen': (context) => NewScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PushScreen(),
                  ),
                );
              },
              child: Text('Перейти на новый экран (Push)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PopScreen(),
                  ),
                );
              },
              child: Text('Вернуться на предыдущий экран (Pop)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PushAndRemoveUntilScreen(),
                  ),
                );
              },
              child: Text(' (Push and Remove Until)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PushReplacementScreen(),
                  ),
                );
              },
              child: Text(' (Push Replacement)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/new_screen');
              },
              child: Text(' (Push Replacement Named)'),
            ),
          ],
        ),
      ),
    );
  }
}

// Для полноты, можно определить пустой NewScreen
class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новый экран'),
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
