import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
export 'package:smart_pocket/src/widgets/cuerpo_texto.dart';



Widget titulo(String titulo){
  return Text(titulo, 
    textAlign: TextAlign.center,
    style: GoogleFonts.josefinSans(
      color: Color.fromRGBO(236, 19, 42, 1),
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
    )
  );
}

Widget subtitulo(String subtitulo){
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: subtitulo,
      style: GoogleFonts.josefinSans(
        color: Color.fromRGBO(236, 19, 42, 1),
        fontSize: 24.0,
        fontWeight: FontWeight.w400,
      ),
    )
  );
}

Widget texto(String texto){
  return RichText(
    textAlign: TextAlign.justify,
    text: TextSpan(
      text: texto,
      style: GoogleFonts.josefinSans(
        color: Color.fromRGBO(25, 20, 20, 1),
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget imagen(String imagen){
  return Container(
    height: 150,
    width: 150,
    child: Image(
      image: AssetImage(imagen) ,
    ),
  );
}

Widget richText(String textoP, String textoS, BuildContext context){
  final sizeScreen = MediaQuery.of(context).size;
  return Container(
    width: sizeScreen.width,
    child: Row(
      children: <Widget>[
        Icon(FontAwesomeIcons.handPointRight),
        SizedBox(width: 5,),
        Container(
          width: sizeScreen.width*0.85,
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: GoogleFonts.josefinSans(
                color: Color.fromRGBO(25, 20, 20, 1),
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: textoP, 
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.bold
                  )
                ),
                TextSpan(
                  text: textoS,
                ),
              ]
            ),
          ),
        ),
      ],
    ),
  );
}