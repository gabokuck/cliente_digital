import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactoLayout extends StatelessWidget {
  const  ContactoLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle style = GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20);
    return Container(
      // color: Colors.red,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        children: [
          Container(
            color: Constantes.colorSecundario.withOpacity(0.5),
            width: double.maxFinite,
            height: 55,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Text('Andrea Regreso a Clases ', style: style,),
                Text('/ ', style: style),
                Text('Contacto', style: style)
              ],
            ),
          )
        ],
      ),
    );
  }
}