import 'package:flutter/material.dart';

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
