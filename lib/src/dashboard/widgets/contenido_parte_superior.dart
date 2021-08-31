import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/dashboard/controllers/admin_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomCardInfo.dart';

class ContedidoParteSuperior extends StatelessWidget {
  const ContedidoParteSuperior({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashBoardController logic = Get.put(DashBoardController());
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.all(25),
      height: Get.size.height * 0.4,
      width: double.infinity,
      // color: Colors.red,
      child: Column(
        children: [
          SizedBox(height: 2,),
          // Mensaje Supeior
          Container(
              width: double.infinity,
              child: Container(
                height: 30,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                        children: <Widget>[
                          Text('Bienvenido: ', style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: Constantes.colorFondoTexto),),
                          Text(logic.nombreUsuario, style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.normal, color: Constantes.colorFondoTexto),),
                        ]
                    ),
                    Expanded(child: Divider(color: Constantes.colorPrimario, height: 1,))
                  ],
                ),
              )
          ),

          SizedBox(height: 20,),

          // Cards informativas
          CardsInformativas()
        ],
      ),
    );
  }
}


/// Sección de las cards informaticas y divisas
class CardsInformativas extends StatelessWidget {
  const CardsInformativas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DashBoardController logic = Get.put(DashBoardController());

    return Expanded(
      child: Container(
        // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 200,
                // color: Colors.green,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                // color: Colors.yellow,
                                alignment: Alignment.centerLeft,
                                child: CustomCardInfo(
                                  titulo: 'Solicitudes Pendientes',
                                  icon: SvgPicture.asset('assets/icons/solicitudes.svg', color: Colors.white,),
                                  contenido: '01',
                                  color: Color.fromRGBO(31, 37, 59, 1),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: CustomCardInfo(
                                  titulo: 'Total Deuda',
                                  icon: SvgPicture.asset('assets/icons/money.svg', color: Colors.white),
                                  contenido: '\$ 10,000,000.00',
                                  color: Color.fromRGBO(4, 100, 145, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                        child: CustomCardInfo(
                          titulo: 'Créditos Activos',
                          icon: SvgPicture.asset('assets/icons/contacto.svg', color: Colors.white),
                          contenido: '00',
                          color: Color.fromRGBO(26, 58, 105, 1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                        child: CustomCardInfo(
                          titulo: 'Notificaciones',
                          icon: SvgPicture.asset('assets/icons/notification.svg', color: Colors.white),
                          contenido: '00',
                          color: Color.fromRGBO(26, 80, 105, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ModuloDivisas(logic: logic)
          ],
        ),
      ),
    );
  }
}

class ModuloDivisas extends StatelessWidget {
  const ModuloDivisas({
    Key? key,
    required this.logic,
  }) : super(key: key);

  final DashBoardController logic;

  @override
  Widget build(BuildContext context) {


    // Configuraciones Modulo Divisas
    // final Color colorFondo = Color.fromRGBO(10, 21, 40, 1.0);
    final Color colorFondo = Colors.transparent;
    final Color colorTexto = Colors.white;
    final Color colorTextoDivisas = Color.fromRGBO(255, 152, 14, 1.0);
    final double separacion = 10.0;

    return Expanded(
      flex: 6,
      child: Container(
        // color: Colors.red,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            image: DecorationImage(image: logic.assetImage, fit: BoxFit.fill),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  spreadRadius: 1,
                  offset: Offset(10,10)
              )
            ]
        ),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            padding: EdgeInsets.all(0),
            width: double.maxFinite,
            height: double.maxFinite,
            color: colorFondo,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    // color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(fit: BoxFit.scaleDown,child: Text('Valor Divisas', style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: colorTexto),)),
                          width: double.maxFinite,
                        ),
                        Divider(color: Colors.white,),
                        Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.yellow,
                          width: double.maxFinite,
                          constraints: BoxConstraints(
                              maxWidth: 200
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: FittedBox(fit: BoxFit.scaleDown,child: Text('Dolar US:', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTexto),)),
                              ),
                              Container(
                                child: Text('17.50', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTextoDivisas),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: separacion,),
                        Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.yellow,
                          width: double.maxFinite,
                          constraints: BoxConstraints(
                              maxWidth: 200
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: FittedBox(fit: BoxFit.scaleDown,child: Text('Euro:', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTexto),)),
                              ),
                              Container(
                                child: Text('19.50', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTextoDivisas),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: separacion,),
                        Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.yellow,
                          width: double.maxFinite,
                          constraints: BoxConstraints(
                              maxWidth: 200
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: FittedBox(fit: BoxFit.scaleDown,child: Text('Yen:', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTexto),)),
                              ),
                              Container(
                                child: Text('0.19', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTextoDivisas),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(fit: BoxFit.scaleDown,child: Text('Mercado:', style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: colorTexto),)),
                          width: double.maxFinite,
                        ),
                        Divider(color: Colors.white,),
                        Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.yellow,
                          width: double.maxFinite,
                          constraints: BoxConstraints(
                              maxWidth: 200
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: FittedBox(fit: BoxFit.scaleDown,child: Text('TIIE Días:', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTexto),)),
                              ),
                              Container(
                                child: Text('14.50 %', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTextoDivisas),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: separacion,),
                        Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.yellow,
                          width: double.maxFinite,
                          constraints: BoxConstraints(
                              maxWidth: 200
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: FittedBox(fit: BoxFit.scaleDown,child: Text('CETES 28 Días:', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTexto),)),
                              ),
                              Container(
                                child: FittedBox(fit: BoxFit.scaleDown,child: Text('4.50', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: colorTextoDivisas),)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      width: double.maxFinite,
                      // color: Colors.red,
                      child: Image.asset('assets/img/globe2.gif', alignment: Alignment.center, fit: BoxFit.contain, gaplessPlayback: true,)
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}


