import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GenerateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Routing')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number of Screens'),
              inputFormatters: [
                // Adding a limit of 3 digits for the number input
                LengthLimitingTextInputFormatter(3),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                int count = int.tryParse(_controller.text) ?? 0;

                // Check if the number is valid and within the range of 1 to 200
                if (count <= 0 || count > 200) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a number between 1 and 200')),
                  );
                  return;
                }

                for (int i = 1; i <= count; i++) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DynamicScreen(id: i)),
                  );
                }
              },
              child: Text('Generate Screens'),
            ),
          ],
        ),
      ),
    );
  }
}

class DynamicScreen extends StatelessWidget {
  final int id;

  DynamicScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Screen $id')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is screen #$id', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              child: Text('Go to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
