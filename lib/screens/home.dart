// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_field, use_full_hex_values_for_flutter_colors, avoid_print

import 'package:bmi_calculator/components/ReuseableCard.dart';
import 'package:bmi_calculator/screens/resultScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/IconWithLabel.dart';
import '../components/roundedbtn.dart';

// ignore: constant_identifier_names
// enum GenderSelection { Male, Female }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final inActiveColor = Color(0xff1d1e33);
  // final activeColor = Color(0x11d1e33);
  // late GenderSelection selection;
  int _height = 150;
  int _weight = 65;
  int _age = 16;

  void _incrementAge() {
    setState(() {
      _age++;
    });
  }

  void _decrementAge() {
    setState(() {
      _age--;
    });
  }

  void _incrementWeight() {
    setState(() {
      _weight++;
    });
  }

  void _decrementWeight() {
    setState(() {
      _weight--;
    });
  }

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
                  color: Color(0x15eb1555),
                  // selection == GenderSelection.Male
                  //     ? activeColor
                  //     : inActiveColor,
                  myChid: IconWithLabel(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  onpressed: () {
                    // setState(() {
                    //   selection = GenderSelection.Male;
                    // });
                  },
                ),
                ReuseableCard(
                  color: Color(0x15eb1555),
                  // selection == GenderSelection.Male
                  //     ? inActiveColor
                  //     : activeColor,
                  myChid: IconWithLabel(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onpressed: () {
                    // setState(() {
                    //   selection = GenderSelection.Female;
                    // });
                  },
                ),
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
                      onChanged: (double newValue) {
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
            onpressed: () {},
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
                            onpress: _incrementWeight,
                            color: Color(0xff0A0E21),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RoundedBTN(
                              icon: FontAwesomeIcons.minus,
                              onpress: _decrementWeight,
                              color: Color(0xff0A0E21))
                        ],
                      )
                    ],
                  ),
                  onpressed: () {},
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
                            color: Color(0xff0A0E21),
                            icon: FontAwesomeIcons.plus,
                            onpress: _incrementAge,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RoundedBTN(
                            color: Color(0xff0A0E21),
                            icon: FontAwesomeIcons.minus,
                            onpress: _decrementAge,
                          ),
                        ],
                      )
                    ],
                  ),
                  onpressed: () {},
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => ResultScreen()));
            },
            child: Text("CALCULATE"),
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).accentColor,
                minimumSize: Size(double.infinity, 50)),
          )
        ],
      )),
    );
  }
}
