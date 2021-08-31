import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardInfo extends StatelessWidget {

  final String titulo;
  final Color color;
  final Widget icon;
  final String contenido;

  const CustomCardInfo({
    Key? key,
    required this.titulo,
    this.color = Colors.red,
    required this.icon,
    required this.contenido,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10, right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(3,3)
            )
          ],
          // border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(0))
        ),
        height: 150,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              width: double.maxFinite,
              height: 35,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0)),
              ),
              child: FittedBox(fit: BoxFit.contain ,child: Text(titulo, style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),)),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: color.withOpacity(0.8),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0))
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 50,
                        maxHeight: 50,
                        minWidth: 30,
                        minHeight: 30
                      ),
                      child: icon,
                    ),
                    Spacer(),
                    Container(
                      // alignment: Alignment.centerRight,
                      // color: Colors.red,
                      constraints: BoxConstraints(
                        maxHeight: 50,
                        maxWidth: 170,
                        minHeight: 10,
                        minWidth: 10
                      ),
                      child: FittedBox(fit: BoxFit.scaleDown,child: Text(contenido, style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 60, color: Colors.white),)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}