import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PublicidadWidgetExtended extends StatelessWidget {
  const PublicidadWidgetExtended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0, left: 0),
      child: Container(
        margin: EdgeInsets.only(right: 100, top: 30),
        width: 160,
        height: double.maxFinite,
        color: Colors.grey,
        child: Center(
          child: Transform.rotate(
            angle: pi/2,
            child: Text('Publicidad', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
