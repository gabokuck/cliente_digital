import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardSolicitudWebWidget extends StatefulWidget {

  final double marginHorizontal;
  final double marginVertical;
  final Color color;
  final Color colorFondo;
  final double porcentaje;
  final double borderRadius;

  const CardSolicitudWebWidget({Key? key,
    this.marginHorizontal = 20,
    this.marginVertical = 5,
    this.color = Colors.green,
    this.colorFondo = Colors.grey,
    this.porcentaje = 0.3,
    this.borderRadius = 5.0,
  }) : super(key: key);

  @override
  _CardSolicitudWebWidgetState createState() => _CardSolicitudWebWidgetState();
}

class _CardSolicitudWebWidgetState extends State<CardSolicitudWebWidget> {

  bool isOpen = false;
  TextStyle styleBold = GoogleFonts.montserrat(fontWeight: FontWeight.bold);
  TextStyle styleNormal = GoogleFonts.montserrat(fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 0, right: 0),
      width: double.maxFinite,
      height: this.isOpen?220:92,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Constantes.colorSecundario),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Constantes.colorSombra,
                blurRadius: 7,
                offset: Offset(3,3)
            )
          ],
          // border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(0))
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.centerLeft,
            color: Constantes.colorSecundario,
            height: 35,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Solicitud #123456', style: GoogleFonts.montserrat(fontSize: 15),),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      setState(() => this.isOpen = !this.isOpen);
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(Icons.find_in_page)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(Icons.edit)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(Icons.delete)
                          ),
                        ),


                        Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          width: 30,
                          child: Icon(Icons.arrow_drop_down, size: 30,),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: widget.marginHorizontal, vertical: widget.marginVertical),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Capital:', style: styleBold,),
                                  Text('Campaña:', style: styleBold,),
                                  Text('Sucursal:', style: styleBold,)
                                ],
                              )
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              // color: Colors.blue,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('\$ 75,000', style: styleNormal,),
                                  Text('Andrea Regreso a Clases', style: styleNormal,),
                                  Text('Andrea Centro', style: styleNormal,)
                                ],
                              )
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              // color: Colors.red,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Plazo:', style: styleBold,),
                                    Text('Saldo:', style: styleBold,),
                                    Text('Fecha Inicio:', style: styleBold,)
                                  ],
                                )
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              // color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('12 Meses', style: styleNormal,),
                                    Text('\$ 7,500', style: styleNormal,),
                                    Text('01/05/2021', style: styleNormal,)
                                  ],
                                )
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              // color: Colors.red,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Fecha Termino:', style: styleBold,),
                                    Text('Fecha Próximo Pago:', style: styleBold,),
                                    Text('Monto Próximo Pago:', style: styleBold,)
                                  ],
                                )
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              // color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('01/09/2021', style: styleNormal,),
                                    Text('01/06/2021', style: styleNormal,),
                                    Text('\$ 7,000', style: styleNormal,)
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: this.isOpen? EdgeInsets.only(bottom: 15): EdgeInsets.only(bottom: 10),
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomPorcentajeWidget(
                            color: widget.color,
                            borderRadius: widget.borderRadius,
                            colorFondo: widget.colorFondo,
                            marginHorizontal: widget.marginHorizontal,
                            marginVertical: widget.marginVertical,
                            porcentaje: widget.porcentaje,
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(right: 20),
                        //   height: 30,
                        //   width: 50,
                        //   child: Row(
                        //     children: [
                        //       // Expanded(
                        //       //   child: Container(
                        //       //     child: MouseRegion(
                        //       //       cursor: SystemMouseCursors.click,
                        //       //         child: Icon(Icons.remove_red_eye_rounded)
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Expanded(
                        //       //   child: Container(
                        //       //     child: MouseRegion(
                        //       //         cursor: SystemMouseCursors.click,
                        //       //         child: Icon(Icons.remove_red_eye_rounded)
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomPorcentajeWidget extends StatefulWidget {

  final double marginHorizontal;
  final double marginVertical;
  final Color color;
  final Color colorFondo;
  final double porcentaje;
  final double borderRadius;

  const CustomPorcentajeWidget({
    Key? key,
    required this.marginHorizontal,
    required this.marginVertical,
    required this.color,
    required this.colorFondo,
    required this.porcentaje,
    required this.borderRadius,
  }) : super(key: key);

  @override
  _CustomPorcentajeWidgetState createState() => _CustomPorcentajeWidgetState();
}

class _CustomPorcentajeWidgetState extends State<CustomPorcentajeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      // color: Colors.red,
      width: 30,
      margin: EdgeInsets.symmetric(horizontal: widget.marginHorizontal, vertical: widget.marginVertical),
      child: Stack(
        children: [
          Align(
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: widget.colorFondo,
                borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius))
              ),
            ),
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: constraints.maxWidth * widget.porcentaje,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius))
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              height: double.maxFinite,
              child: Text('${widget.porcentaje * 100}%', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
    );
  }
}
