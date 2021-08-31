import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/shared/publicidad/publicidad_widget_extended.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class DetalleCreditoWeb extends StatelessWidget {
  const  DetalleCreditoWeb({Key? key}) : super(key: key);

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
                Text('Créditos', style: style)
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
                              padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
                              child: ListView(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    alignment: Alignment.centerLeft,
                                    color: Constantes.colorPrimario,
                                    height: 40,
                                    width: double.maxFinite,
                                    child: Text('Detalle del Crédito', style: GoogleFonts.montserrat(color: Colors.white),),
                                  ),

                                  DetalleCreditoWidget(),

                                ],
                              ),
                            ),
                          ),
                        )
                    ),
                    PublicidadWidgetExtended()
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

class DetalleCreditoWidget extends StatelessWidget {
  const DetalleCreditoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final int anchoPrimeraTab = 2;
    final int anchoSegundaTab = 5;

    Map<String, double> dataMap = {
      "Porcentaje Pagos": 5,
      "Deuda": 3
    };

    List<Color> colorList = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
    ];

    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  // decoration: BoxDecoration(
                  //     // color: Colors.grey.shade400,
                  //     border: Border.all(
                  //         color: Colors.black
                  //     )
                  // ),
                  // height: 140,
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// ---------- Generales ------------
                      // Titulo de la tabla
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade600,
                          border: Border.all(
                            color: Colors.transparent,
                          )
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 15),
                        width: double.maxFinite,
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.attach_money, color: Colors.white,),
                            SizedBox(width: 5,),
                            Text('Generales', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                      // -------- Contenido de la tabla
                      // Capital
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Capital:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 75,000', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Plazo
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Plazo:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('12 Meses', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Saldo
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Saldo:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 75,000', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Fecha Inicio
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Fecha Inicio:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('01/05/2021', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Fecha Termino
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Fecha Termino:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('01/05/2021', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Fecha Próximo Pago
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Fecha Próximo Pago:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('01/05/2021', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Monto Próximo Pago
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Monto Próximo Pago:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.transparent,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 7,500', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Campaña
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Campaña:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Andrea Regreso a Clases', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Sucursal
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Sucursal:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Andrea Centro', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),


                      /// ---------- Saldos ------------
                      // Titulo de la tabla
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 15),
                        width: double.maxFinite,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            border: Border.all(
                              width: 0,
                              color: Colors.transparent,
                            )
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.attach_money, color: Colors.white,),
                            SizedBox(width: 5,),
                            Text('Saldos', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                      // -------- Contenido de la tabla
                      // Saldo Capital
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Saldo Capital:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 0.00', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Saldo Vencido
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Saldo Vencido:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 0.00', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Saldo para Liquidar
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Saldo para Liquidar:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 0.00', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Adeudo Total
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Adeudo Total:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 0.00', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),


                      /// ---------- Cuotas ------------
                      // Titulo de la tabla
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 15),
                        width: double.maxFinite,
                        height: 40,
                        color: Colors.grey.shade600,
                        child: Row(
                          children: [
                            Icon(Icons.attach_money, color: Colors.white,),
                            SizedBox(width: 5,),
                            Text('Cuotas', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                      // -------- Contenido de la tabla
                      // Cuotas Contratadas
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Cuotas Contratadas:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('0', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Cuotas Devengadas
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Cuotas Devangadas:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('0', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Cuotas Pagadas
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Cuotas Pagadas:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('0', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Cuotas Vencidas
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Cuotas Vencidas:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('0', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),


                      /// ---------- Pagos ------------
                      // Titulo de la tabla
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 15),
                        width: double.maxFinite,
                        height: 40,
                        color: Colors.grey.shade600,
                        child: Row(
                          children: [
                            Icon(Icons.attach_money, color: Colors.white,),
                            SizedBox(width: 5,),
                            Text('Pagos', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                      // -------- Contenido de la tabla
                      // Fecha ültimo Pago
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Fecha Último Pago:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('10/05/2021', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Monto Último Pago
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Monto Último Pago:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 0.00', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Fecha Próximo Pago
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Fecha Próximo Pago:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('10/05/2021', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Total Próximo Pago
                      Container(
                        color: Colors.grey.shade400,
                        child: Row(
                          children: [
                            Expanded(
                              flex: anchoPrimeraTab,
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.grey.shade400,
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Text('Total Próximo Pago:', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Expanded(
                              flex: anchoSegundaTab,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.white,
                                height: 40,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('\$ 0.00', style: GoogleFonts.montserrat(fontWeight: FontWeight.normal),),
                              ),
                            ),
                          ],
                        ),
                      ),


                      /// Boton ver detalles del crédito
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: (){
                            Get.dialog(
                              AlertaDetallesPagosWidget()
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text('VER DETALLE DE PAGOS', style: GoogleFonts.montserrat(color: Colors.white),),
                            height: 40,
                            width: double.maxFinite,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 1002,
                  width: double.maxFinite,
                  // decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     border: Border.all(
                  //         color: Colors.black
                  //     )
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Genrales
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        width: double.maxFinite,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            border: Border.all(
                              color: Colors.transparent,
                            )
                        ),
                        child: Row(
                          children: [
                            // Icon(Icons.attach_money, color: Colors.white,),
                            // SizedBox(width: 5,),
                            // Text('', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 360,
                        child: Align(
                          child: Container(
                            height: 150,
                            child: PieChart(
                              key: ValueKey(key),
                              dataMap: dataMap,
                              animationDuration: Duration(milliseconds: 800),
                              chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
                                  ? 300
                                  : MediaQuery.of(context).size.width / 3.2,
                              colorList: colorList,
                              initialAngleInDegree: 0,
                              chartType: ChartType.disc,
                              centerText: "",
                              legendOptions: LegendOptions(
                                showLegendsInRow: false,
                                legendPosition: LegendPosition.right,
                                showLegends: true,
                                legendShape: BoxShape.rectangle,
                                legendTextStyle: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              chartValuesOptions: ChartValuesOptions(
                                chartValueStyle: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                                showChartValueBackground: false,
                                showChartValues: true,
                                showChartValuesInPercentage: true,
                                showChartValuesOutside: false,
                              ),
                              ringStrokeWidth: 32,
                              emptyColor: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      // Saldos
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        width: double.maxFinite,
                        height: 40,
                        color: Colors.grey.shade600,
                        child: Row(
                          children: [
                            // Icon(Icons.attach_money, color: Colors.white,),
                            // SizedBox(width: 5,),
                            // Text('Saldos', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 160,
                        child: PieChart(
                          key: ValueKey(key),
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 800),
                          chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
                              ? 300
                              : MediaQuery.of(context).size.width / 3.2,
                          colorList: colorList,
                          initialAngleInDegree: 0,
                          chartType: ChartType.disc,
                          centerText: "",
                          legendOptions: LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.right,
                            showLegends: true,
                            legendShape: BoxShape.rectangle,
                            legendTextStyle: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          chartValuesOptions: ChartValuesOptions(
                            chartValueStyle: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                            showChartValueBackground: false,
                            showChartValues: true,
                            showChartValuesInPercentage: true,
                            showChartValuesOutside: false,
                          ),
                          ringStrokeWidth: 32,
                          emptyColor: Colors.grey,
                        ),
                      ),
                      // Cuotas
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        width: double.maxFinite,
                        height: 40,
                        color: Colors.grey.shade600,
                        child: Row(
                          children: [
                            // Icon(Icons.attach_money, color: Colors.white,),
                            // SizedBox(width: 5,),
                            // Text('Saldos', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 160,
                        child: PieChart(
                          key: ValueKey(key),
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 800),
                          chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
                              ? 300
                              : MediaQuery.of(context).size.width / 3.2,
                          colorList: colorList,
                          initialAngleInDegree: 0,
                          chartType: ChartType.disc,
                          centerText: "",
                          legendOptions: LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.right,
                            showLegends: true,
                            legendShape: BoxShape.rectangle,
                            legendTextStyle: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          chartValuesOptions: ChartValuesOptions(
                            chartValueStyle: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                            showChartValueBackground: false,
                            showChartValues: true,
                            showChartValuesInPercentage: true,
                            showChartValuesOutside: false,
                          ),
                          ringStrokeWidth: 32,
                          emptyColor: Colors.grey,
                        ),
                      ),
                      // Pagos
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        width: double.maxFinite,
                        height: 40,
                        color: Colors.grey.shade600,
                        child: Row(
                          children: [
                            // Icon(Icons.attach_money, color: Colors.white,),
                            // SizedBox(width: 5,),
                            // Text('Saldos', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 150,
                        child: PieChart(
                          key: ValueKey(key),
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 800),
                          chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
                              ? 300
                              : MediaQuery.of(context).size.width / 3.2,
                          colorList: colorList,
                          initialAngleInDegree: 0,
                          chartType: ChartType.disc,
                          centerText: "",
                          legendOptions: LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.right,
                            showLegends: true,
                            legendShape: BoxShape.rectangle,
                            legendTextStyle: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          chartValuesOptions: ChartValuesOptions(
                            chartValueStyle: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                            showChartValueBackground: false,
                            showChartValues: true,
                            showChartValuesInPercentage: true,
                            showChartValuesOutside: false,
                          ),
                          ringStrokeWidth: 32,
                          emptyColor: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AlertaDetallesPagosWidget extends StatelessWidget {
  const AlertaDetallesPagosWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        child: Container(
          alignment: Alignment.center,
          height: Get.size.height * 0.5,
          width: Get.size.width * 0.5,
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Constantes.colorPrimario,
                    border: Border.all(
                      color: Colors.transparent,
                    )
                ),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15),
                width: double.maxFinite,
                height: 40,
                child: Row(
                  children: [
                    Text('Detalles de Pagos', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                height: double.maxFinite,
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
