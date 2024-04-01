import 'package:basic_app/about_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HomePage"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutPage()),
                    );
                    debugPrint('cliked');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Next page",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
