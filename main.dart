import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ColumnRowLayout(),
    );
  }
}

class ColumnRowLayout extends StatelessWidget {
  const ColumnRowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Column and Row Layout',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: const Text('1',
                      style: TextStyle(color: Colors.white,
                          fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: const Text('2',
                      style: TextStyle(color: Colors.white,
                          fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('3',
                      style: TextStyle(color: Colors.white,
                          fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ],
            ),

            const SizedBox(height: 40),


            Container(
              width: 320,
              height: 80,
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text(
                'Large Container',
                style: TextStyle(color: Colors.white,
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 40),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                  ),
                  child: const Text('Left',
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                  ),
                  child: const Text('Right',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}