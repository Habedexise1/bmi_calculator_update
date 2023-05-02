// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_field

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
  int _height = 150;
  int _weight = 65;
  int _age = 16;
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
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Container(
                      child: Text(
                        _height.toString(),
                        style: TextStyle(
                          fontSize: 47,
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
                ),
                Container(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 2,
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xffeb1555),
                      overlayColor: Color(0x15eb1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                    ),
                    child: Slider(
                      max: 220,
                      min: 120,
                      onChanged: (newValue) {
                        setState(() {
                          _height = newValue.toInt().round();
                        });
                      },
                      value: _height.toDouble(),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReuseableCard(
                  color: Color(0xff1d1e33),
                  myChid: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("WEIGHT"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Container(
                            child: Text(
                              _weight.toString(),
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              'kg',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedBTN(
                            icon: FontAwesomeIcons.plus,
                            onpress: () {},
                            color: Color(0xff0A0E21),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RoundedBTN(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {},
                              color: Color(0xff0A0E21))
                        ],
                      )
                    ],
                  ),
                ),
                ReuseableCard(
                  color: Color(0xff1d1e33),
                  myChid: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("AGE"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Container(
                            child: Text(
                              _age.toString(),
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              'yr',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedBTN(
                            icon: FontAwesomeIcons.plus,
                            onpress: () {},
                            color: Color(0xff0A0E21),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RoundedBTN(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {},
                              color: Color(0xff0A0E21))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class RoundedBTN extends StatelessWidget {
  final IconData icon;
  final Function onpress;
  final Color color;
  const RoundedBTN(
      {super.key,
      required this.icon,
      required this.onpress,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 15,
      ),
      onPressed: onpress(),
      elevation: 8,
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      shape: CircleBorder(),
      fillColor: color,
    );
  }
}
