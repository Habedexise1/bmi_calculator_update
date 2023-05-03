// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color color;
  final Widget myChid;
  final Function onpressed;
  const ReuseableCard( {
    required this.color,
    required this.myChid,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: onpressed(),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: myChid,
        ),
      ),
    ));
  }
}
