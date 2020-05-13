import 'package:flutter/material.dart';

class FondoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
        ),
      ],
   );
 }
}