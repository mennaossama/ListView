import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                "Assignment1",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              actions: const [
                Icon(
                  Icons.search,
                  color: Colors.black,
                )
              ]),
          body: const MyListView(),
        ));
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.lightBlue,
      Colors.green,
      Colors.red,
      Colors.lightGreen,
      Colors.lightBlue,
      Colors.pink,
      Colors.purple,
      Colors.orangeAccent,
      Colors.brown,
      Colors.yellow
    ];

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return Container(
            height: 150,
            margin: EdgeInsets.all(6),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colors[index % colors.length],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Stack(
              children: [
                Expanded(
                    child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Top Left ',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
                Expanded(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Center',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Bottom Right ',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
              ],
            ));
      },
    );
  }
}
