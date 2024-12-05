import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';
import 'generate_screen.dart'; // Updated import

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/dynamic': (context) => GenerateScreen(), // Updated route
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/third') {
          final args = settings.arguments as String? ?? 'Default Message'; // Provide a default value
          return MaterialPageRoute(
            builder: (context) => ThirdScreen(message: args),
          );
        }
        return null; // Return null for unhandled routes, falling back to `onUnknownRoute`.
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            appBar: AppBar(title: Text('Error')),
            body: Center(child: Text('Route not found: ${settings.name}')),
          );
        });
      },
    );
  }
}
