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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
            ),
            Positioned(
                bottom: 20,
                child: Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ))
          ],
        ),
      )
    );
  }
}
