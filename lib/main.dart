import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Colors.green,
              foregroundColor: Colors.white,
              centerTitle: true,
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
      debugShowCheckedModeBanner: false,
      title: "Module 11 Practice",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Module 11 Practice"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: const Text("Hello SnackBar"),
                        duration: const Duration(seconds: 5),
                        action: SnackBarAction(label: 'Cancel', onPressed: (){}),
                        ));
                  },
                  child: const Text(
                    "SnackBar",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ));
  }
}
