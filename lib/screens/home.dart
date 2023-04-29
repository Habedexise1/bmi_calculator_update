// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:bmi_calculator/components/ReuseableCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/IconWithLabel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                ReuseableCard(
                  color: Color(0xff1d1e33),
                  myChid: IconWithLabel(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
                ReuseableCard(
                    color: Color(0xff1d1e33),
                    myChid: IconWithLabel(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE')),
              ],
            ),
          ),
          ReuseableCard(
            color: Color(0xff1d1e33),
            myChid: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "HEIGHT",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        '150',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'cm',
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          // Expanded(
          //   child: Row(
          //     children: <Widget>[
          //       ReuseableCard(
          //         color: Color(0xff1d1e33),
          //       ),
          //       ReuseableCard(
          //         color: Color(0xff1d1e33),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      )),
    );
  }
}
