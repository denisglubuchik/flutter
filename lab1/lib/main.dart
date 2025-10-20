import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              color: Colors.blueAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('First'), Text('Second'), Text('Third')],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(radius: 40, backgroundColor: Colors.green),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK4Xai81g_uzTU4OMdgXteU3bEEbMz_zViIw&s',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.orangeAccent,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button pressed!');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
