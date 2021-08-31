import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/dashboard/controllers/admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DashBoardController logic = Get.put(DashBoardController());
    TextStyle estiloTextNavBar = GoogleFonts.montserrat(color: Constantes.colorTexto);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.maxFinite,
      height: 55,
      color: Constantes.colorPrimario,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: logic.ocultarMenu,
                      icon: Icon(Icons.menu, color: Constantes.colorTexto,)
                  ),
                  SizedBox(width: 10,),
                  Text('S2Digital', style: estiloTextNavBar,)
                ],
              )
          ),
          Container(
              child: Row(
                children: [
                  Text(logic.nombreUsuario, style: estiloTextNavBar,),
                  SizedBox(width: 20,),

                  //TODO: se tendra que crear un widget para mostrar las notificaciones en esta lugar
                  Icon(Icons.person, color: Constantes.colorTexto,)

                ],
              )
          )
        ],
      ),
    );
  }
}