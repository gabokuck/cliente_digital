import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/dashboard/controllers/admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMenuLateral extends StatefulWidget {

  final String texto;
  final Widget widget;
  final bool isMenuActivado;
  final String ruta;

  const ButtonMenuLateral({
    Key? key,
    required this.texto,
    required this.widget,
    required this.isMenuActivado,
    required this.ruta
  }) : super(key: key);

  @override
  _ButtonMenuLateralState createState() => _ButtonMenuLateralState();
}

class _ButtonMenuLateralState extends State<ButtonMenuLateral> {

  bool hover = false;
  bool isSelected = false;
  DashBoardController logic = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return widget.isMenuActivado
        ?MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_)=>setState((){hover = true;}),
        onExit: (_)=>setState((){hover = false;}),
        child: GestureDetector(
          onTap: (){
            setState(() {
              logic.ruta = widget.ruta;
              logic.rutaGet();
              logic.updateMenuLateral();
            });
          },
          child: Container(
            width: double.infinity,
            height: 50,
            color: widget.ruta == logic.ruta?Colors.grey.withOpacity(0.5):Constantes.colorSecundario,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 40,),
                  Container(width: 18, height: 18,child: widget.widget),
                  SizedBox(width: 10,),
                  Text(widget.texto, style: GoogleFonts.montserrat(color: Constantes.colorFondoTexto),),
                ],
              ),
            ),
          ),
        )
    )
    :MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_)=>setState((){hover = true;}),
        onExit: (_)=>setState((){hover = false;}),
        child: GestureDetector(
          onTap: (){
            setState(() {
              logic.ruta = widget.ruta;
              logic.rutaGet();
              logic.updateMenuLateral();
            });
          },
          child: Container(
            width: 60,
            height: 50,
            color: widget.ruta == logic.ruta?Colors.grey.withOpacity(0.5):Constantes.colorSecundario,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 25, height: 25,child: FittedBox(fit: BoxFit.contain,child: widget.widget)),
                ],
              ),
            ),
          ),
        )
    );
  }
}
