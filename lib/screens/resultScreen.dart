// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:bmi_calculator/components/ReuseableCard.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String bmiResult;
  final String result;
  final String feedback;
  const ResultScreen({
    super.key,
    required this.bmiResult,
    required this.result,
    required this.feedback,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              child: Text(
                'Result',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ReuseableCard(
              color: Color(0xff1d1e33),
              myChid: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      widget.result,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Text(
                    widget.bmiResult,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      widget.feedback,
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              ),
              onpressed: () {}),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Re-calculate".toUpperCase()),
            style: ElevatedButton.styleFrom(
                primary: Colors.pink, minimumSize: Size(double.infinity, 50)),
          )
        ],
      ),
    );
  }
}
