import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/shared/publicidad/publicidad_widget.dart';
import 'package:cliente_digital/src/views_app/creditos/web/widgets/card_credito_web_widget.dart';
import 'package:cliente_digital/src/views_app/solicitudes/web/widgets/card_solicitud_web_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContenidoInferiorWidget extends StatelessWidget {
  const ContenidoInferiorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        // color: Colors.red,
        child: Row(
          children: [
            Expanded(
              child: Container(
                // color: Colors.red,
                child: ListView(
                  children: [
                    Container(
                        width: double.infinity,
                        child: Container(
                          // color: Colors.yellow,
                          height: 30,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Solicitudes: ', style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: Constantes.colorFondoTexto),),
                              Expanded(child: Container(padding: EdgeInsets.only(right: 30), child: Divider(color: Constantes.colorPrimario, height: 1,)))
                            ],
                          ),
                        )
                    ),
                    SizedBox(height: 20,),
                    CardSolicitudWebWidget(
                      porcentaje: 0.0,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20,),
                    Container(
                        width: double.infinity,
                        child: Container(
                          // color: Colors.yellow,
                          height: 30,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Créditos: ', style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: Constantes.colorFondoTexto),),
                              Expanded(child: Container(padding: EdgeInsets.only(right: 30), child: Divider(color: Colors.black, height: 1,)))
                            ],
                          ),
                        )
                    ),
                    SizedBox(height: 20,),
                    CardCreditoWebWidget(),
                  ],
                ),
              ),
            ),
            PublicidadWidget()
          ],
        ),
      ),
    );
  }
}

class ModuloCreditos extends StatelessWidget {
  const ModuloCreditos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [


      ],
    );
  }
}

class ModuloSolicitudes extends StatelessWidget {
  const ModuloSolicitudes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}