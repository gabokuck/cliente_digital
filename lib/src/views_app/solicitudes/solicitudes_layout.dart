import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/shared/publicidad/publicidad_widget_extended.dart';
import 'package:cliente_digital/src/views_app/creditos/web/widgets/card_credito_web_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SolicitudesLayout extends StatelessWidget {
  const  SolicitudesLayout({Key? key}) : super(key: key);

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
                Text('Solicitudes', style: style)
              ],
            ),
          ),
          Expanded(
              child: Container(
                // color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        child: Align(
                          child: Container(
                            alignment: Alignment.center,
                            // color: Colors.blue,
                            child: Container(
                              padding: EdgeInsets.only(left: 30, right: 30, top: 35),
                              child: ListView(
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    height: 40,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 300,
                                        height: double.maxFinite,
                                        child: TextFormField(
                                          cursorColor: Constantes.colorSecundario,
                                          decoration: InputDecoration(
                                            suffixIcon: Icon(Icons.search),
                                            fillColor: Constantes.colorSecundario,
                                            focusColor: Constantes.colorSecundario,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(5))
                                            )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                  CardCreditoWebWidget(),
                                ],
                              ),
                            ),
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 100, top: 30),
                      // color: Colors.red,
                      child: PublicidadWidgetExtended(),
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}