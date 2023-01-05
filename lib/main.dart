import 'package:flutter/material.dart';

import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_gen_scan/intro.dart';
import 'package:qr_gen_scan/scan.dart';

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
        brightness: Brightness.dark,
      ),
      home: intro(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController c = TextEditingController();
  String d = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Make_QR',
        style: TextStyle(fontSize: 30),
      )),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: QrImage(
                data: d,
                backgroundColor: Colors.white,
                version: QrVersions.auto,
                size: 250,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: c,
                decoration: InputDecoration(
                  hintText: "Type your data...",
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          if (c.text.isEmpty) {
                            d = "";
                          } else {
                            d = c.text;
                          }
                        });
                      }),
                      child: Text('Tap to Genatare'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
