import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/dashboard/controllers/admin_controller.dart';
import 'package:cliente_digital/src/router/getXRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'widgets/button_menu_lateral.dart';

class MenuLateralWidget extends StatelessWidget {
  const MenuLateralWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Color colorIcon = Constantes.colorFondoTexto;

    return GetBuilder<DashBoardController>(
      id: 'menuLateralId',
        builder: (logic) {
  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width: logic.isMenuOpen ? 220 : 60,
          decoration: BoxDecoration(
              color: Constantes.colorSecundario,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Constantes.colorSombra,
                    offset: Offset(5,6),
                    blurRadius: 6
                )
              ]
          ),
          child: Column(
            children: [
              SizedBox(height: 5,),
              ButtonMenuLateral(
                widget: SvgPicture.asset('assets/icons/dashboard.svg', color: colorIcon,),
                texto: 'DashBoard',
                isMenuActivado: logic.isMenuOpen,
                ruta: RoutesGetX.dash2,
              ),
              Divider(thickness: 0, endIndent: 0, indent: 0, height: 1,),
              ButtonMenuLateral(
                widget: SvgPicture.asset('assets/icons/creditos.svg', color: colorIcon),
                texto: 'Créditos',
                isMenuActivado: logic.isMenuOpen,
                ruta: RoutesGetX.creditos,
              ),
              ButtonMenuLateral(
                widget: SvgPicture.asset('assets/icons/solicitudes.svg', color: colorIcon),
                texto: 'Solicitudes',
                isMenuActivado: logic.isMenuOpen,
                ruta: RoutesGetX.solicitudes,
              ),
              Divider(thickness: 0, endIndent: 0, indent: 0, height: 1,),
              ButtonMenuLateral(
                widget: SvgPicture.asset('assets/icons/contacto.svg', color: colorIcon),
                texto: 'Contacto',
                isMenuActivado: logic.isMenuOpen,
                ruta: RoutesGetX.contacto,
              ),
              ButtonMenuLateral(
                widget: SvgPicture.asset('assets/icons/notificaciones.svg', color: colorIcon),
                texto: 'Notificaciones',
                isMenuActivado: logic.isMenuOpen,
                ruta: RoutesGetX.notificaciones,
              ),
              ButtonMenuLateral(
                widget: SvgPicture.asset('assets/icons/tickets.svg', color: colorIcon),
                texto: 'Tickets',
                isMenuActivado: logic.isMenuOpen,
                ruta: RoutesGetX.tickets,
              ),
              ButtonMenuLateral(
                widget: SvgPicture.asset('assets/icons/politicas_legales.svg', color: colorIcon),
                texto: 'Políticas Legales',
                isMenuActivado: logic.isMenuOpen,
                ruta: RoutesGetX.politicasLegales,
              ),
              ButtonMenuLateral(
                widget: SvgPicture.asset('assets/icons/ofertas.svg', color: colorIcon),
                texto: 'Ofertas',
                isMenuActivado: logic.isMenuOpen,
                ruta: RoutesGetX.ofertas,
              ),
              Expanded(
                child: Container(
                  color: Constantes.colorSecundario,
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: logic.openCloseMenu,
                  child: Container(
                    padding: EdgeInsets.only(right: 18),
                    height: 50,
                    width: double.maxFinite,
                    color: Constantes.colorSecundario,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        logic.isMenuOpen? Icon(Icons.arrow_back_ios_outlined):Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
});
  }
}