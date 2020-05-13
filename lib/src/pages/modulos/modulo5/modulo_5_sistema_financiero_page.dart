import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo5SistemaFinanciero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                titulo('Función del sistema financiero'),
                SizedBox(height: 10,),
                texto('La función fundamental del sistema financiero es la de garantizar una eficaz asignación de los recursos financieros.'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_5_finanzas_page_images/1.png'),
                SizedBox(height: 10,),
                titulo('Estructura del sistema financiero en Colombia'),
                SizedBox(height: 10,),
                texto('De acuerdo con la información contenida en el capítulo 1 del Estatuto Orgánico del Sistema Financiero (EOSF), el sistema financiero colombiano está compuesto por establecimientos de crédito, sociedades de servicios financieros y entidades como, sociedades de capitalización, entidades aseguradoras e intermediarios de seguros y reaseguros.'),
                SizedBox(height: 10,),
                titulo('Establecimiento de crédito'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_5_finanzas_page_images/2.png'),
                SizedBox(height: 10,),
                texto('Entre los establecimientos de crédito se encuentran las instituciones financieras cuya función principal es captar dinero del público a través de depósitos y posteriormente los coloquen en el mercado a través de préstamos u otras operaciones de crédito. Entre estos se encuentran: '),
                SizedBox(height: 10,),
                richText('Establecimientos bancarios: ', 'Son Instituciones financieras con la función principal de captar recursos a través de cuentas bancarias o depósitos a la vista o a término, con el objeto de realizar operaciones de crédito.', context),
                SizedBox(height: 5,),
                richText('Corporaciones financieras: ', 'Instituciones financieras con la función principal de captar recursos a través de depósitos o instrumentos de deuda, con el objeto de realizar operaciones de crédito y efectuar inversiones para fomentar o promover la expansión de empresas.', context),
                SizedBox(height: 5,),
                richText('Compañías de financiamiento comercial: ', 'Su función principal es captar recursos a término, con el objeto primordial de realizar operaciones activas de crédito para facilitar la comercialización de bienes y servicios, y realizar operaciones de arrendamiento financiero o leasing.', context),
                SizedBox(height: 5,),
                richText('Cooperativas financieras: ', 'Su función principal consiste en adelantar actividad financiera.', context),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child:  Align(
                    alignment: Alignment.bottomRight,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        Text('Deslice para continuar', style: GoogleFonts.walterTurncoat(fontSize: 15.0),),
                        SizedBox(width: 15,),
                        Icon(FontAwesomeIcons.arrowRight)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}