import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PublicidadWidget extends StatelessWidget {
  const PublicidadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0, left: 15),
      child: Container(
        width: 160,
        height: 600,
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
