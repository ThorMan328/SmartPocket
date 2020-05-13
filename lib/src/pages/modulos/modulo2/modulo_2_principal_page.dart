import 'package:flutter/material.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                titulo('Presupuesto'),
                SizedBox(height: 15,),
                texto('La necesidad y el deseo son dos conceptos diferentes, mientras la necesidad se refiere a las cosas imprescindibles para vivir, el deseo se centra en aquello que se gustaría obtener, pero que no es una necesidad básica. '),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_2_finanzas_page_images/1.png'),
                SizedBox(height: 10,),
                subtitulo('Tipos de ingresos'),
                SizedBox(height: 5,),
                texto('Los ingresos son todo el dinero que entra a nuestro poder por diversos conceptos: el salario, premios, ayudas, herencias, etcétera.'),
                SizedBox(height: 5,),
                imagen('assets/images/modulo_2_finanzas_page_images/2.png'),
                SizedBox(height: 10,),
                texto('Hay tres categorías de ingresos: '),
                SizedBox(height: 10,),
                richText('Ingresos fijos: ', 'Son aquellos que se reciben de forma regular, como son: las nóminas, los subsidios, las pensiones, alquileres, entre otros.', context),
                SizedBox(height: 5,),
                richText('Ingresos Variables: ', 'Son aquellos que no son recibidos de forma periódica, como por ejemplo: cobrar incentivos o comisiones por ventas, si se realizan trabajos puntuales y demás.', context),
                SizedBox(height: 5,),
                richText('Ingresos extraordinarios: ', 'Son aquellos que no estaban previstos y que ocurren de forma extraordinaria, como por ejemplo el cobro de una herencia o un boleto premiado de lotería.', context),
                SizedBox(height: 10,),
                texto('Para obtener más ingresos es recomendable vender aquello que ya no se usa, realizar trabajos extras o invirtiendo mejor los ahorros. '),
                SizedBox(height: 10,),
                subtitulo('Tipos de gastos'),
                SizedBox(height: 5,),
                texto('Tener en cuenta todo lo que toca pagar a lo largo del año, no solo durante el mes en curso.'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_2_finanzas_page_images/3.png'),
                SizedBox(height: 10,),
                richText('Gastos fijos: ', 'Son aquellas cantidades que se deben pagar de forma periódica y cuyo importe se conoce con anterioridad.', context),
                SizedBox(height: 5,),
                richText('Gastos variables: ', 'Son aquellos gastos que no suponen un desembolso muy elevado, pero que, sumados día tras día, acaban dando lugar a un importe más que considerable.', context),
                SizedBox(height: 5,),
                richText('Gastos discrecionales: ', 'Son aquellos para los que se ha asignado una cifra determinada. Por ejemplo, lo destinado mensualmente a ropa, calzado, salidas y entretenimiento, entre otras categorías.', context),
                SizedBox(height: 10,),
                subtitulo('¿Cómo elaborar un presupuesto familiar?'),
                SizedBox(height: 10,),
                texto('Teniendo en cuenta los tipos de ingresos y los gastos que pueden existir, es hora de hacer un presupuesto. '),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_2_finanzas_page_images/4.png'),
                SizedBox(height: 10,),
                richText('Calcula ingresos mensuales y anuales: ', 'Suma todo lo que ganas al mes y al año. Cuenta sólo con los ingresos fijos.Incluye aquí todas tus fuentes de ingresos, no sólo tu sueldo.', context),
                SizedBox(height: 5,),
                richText('Calcula tus gastos fijos: ', 'Junta todos los gastos fijos que tienes al año Es importante que dividas tus gastos por categorías. ', context),
                SizedBox(height: 5,),
                richText('Calcula tus gastos variables: ', 'Empieza por registrar los gastos variables de cada mes en cada una de las categorías que hayas decidido.', context),
                SizedBox(height: 5,),
                richText('Calcula tu presupuesto familiar: suma y resta: ', 'El cuarto paso del proceso es tan simple como coger una calculadora para sumar tus ingresos y restar todos los gastos. Con esta simple operación tendrás el flujo de caja de tu economía doméstica. A efectos prácticos, verás claramente si ganas más de lo que ingresas y cuánto dinero te sobra cada mes para ahorrar.', context),
                SizedBox(height: 5,),
                richText('Toma decisiones sobre tu economía familiar: ', 'Un buen presupuesto te tiene que acercar a dónde quieres estar económicamente, tanto en cantidad de ahorro como en calidad de consumo. (Preahorro, 2018).', context),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_2_finanzas_page_images/5.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}