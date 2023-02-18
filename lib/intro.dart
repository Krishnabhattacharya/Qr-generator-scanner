import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qr_gen_scan/scan.dart';

import 'main.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'QR_GENARATE & SCAN',
        style: TextStyle(fontSize: 20, color: Colors.white),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset('assete/94946-qr-scanner.json'),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text('QR_Genarate'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyCustomWidget()));
                },
                child: Text('QR_Scan'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
