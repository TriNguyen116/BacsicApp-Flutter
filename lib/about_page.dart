import 'dart:ffi';

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Page'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.layers_rounded,
                          color: Colors.blue,
                          size: 50.0,
                        ),
                        Text(
                          'Learn Flutter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          // textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
