import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Navigation Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: Text('First Screen'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Second Screen'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              title: Text('Third Screen'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/third');
              },
            ),
            ListTile(
              title: Text('Dynamic Routing Screen'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/dynamic');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Go to Second Screen'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
