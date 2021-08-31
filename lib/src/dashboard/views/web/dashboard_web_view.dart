import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/dashboard/controllers/admin_controller.dart';
import 'package:cliente_digital/src/dashboard/widgets/contenido_inferior.dart';
import 'package:cliente_digital/src/dashboard/widgets/contenido_parte_superior.dart';
import 'package:cliente_digital/src/shared/menu_lateral/menulateral.dart';
import 'package:cliente_digital/src/shared/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardWebView extends StatelessWidget {
  const DashBoardWebView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Navbar
          NavBarWidget(),

          Expanded(
            child: GetBuilder<DashBoardController>(
                id: 'idMenu',
                builder: (logic) {
                  return Row(
                    children: [

                      // Menu lateral
                      logic.isMenuExist
                          ? MenuLateralWidget()
                          : Container(),

                      // Contedido Dashboard
                      Expanded(
                        child: ViewWidget(),
                      )

                    ],
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}

class ViewWidget extends StatelessWidget {
  const ViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
      id: 'rutaWiew',
        builder: (logic) {
          return logic.rutaGet();
      }
    );
  }
}

class DashBoardView extends StatelessWidget {
  const DashBoardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Constantes.colorFondo,
        child: Column(
          children: [
            // Mensaje Superior, Cards y Modulo Divisas
            ContedidoParteSuperior(),
            ContenidoInferiorWidget()
          ],
        )
    );
  }
}