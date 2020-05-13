
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

Widget crearBotonRedondeado(BuildContext context, String imagen, String texto, void _navegacion()) {
  return InkWell(
    onTap: _navegacion,
    child: ClipRect(
      child: BackdropFilter(
      filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
      child: Container(
        padding: EdgeInsets.all(0.5),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(113, 124, 104, 1),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Container(
          height: 230.0,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox( height: 5.0 ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 50,
                  child: IconButton(icon: new Image.asset(imagen), onPressed: _navegacion, iconSize: 80,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: RichText( textAlign: TextAlign.center,maxLines: 2,text: TextSpan(
                    style: GoogleFonts.walterTurncoat(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold,),
                    text: texto
                  )),
                ),
                SizedBox( height: 5.0 )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
