import 'package:cliente_digital/src/dashboard/views/web/dashboard_web_view.dart';
import 'package:cliente_digital/src/router/getXRoutes.dart';
import 'package:cliente_digital/src/views_app/contacto/contacto_layout.dart';
import 'package:cliente_digital/src/views_app/creditos/creditos_layout.dart';
import 'package:cliente_digital/src/views_app/creditos/detalle_credito/web/detalle_credito_web.dart';
import 'package:cliente_digital/src/views_app/notificaciones/notificaciones_layout.dart';
import 'package:cliente_digital/src/views_app/ofertas/ofertas_layout.dart';
import 'package:cliente_digital/src/views_app/politicas_legales/politicas_legales_layout.dart';
import 'package:cliente_digital/src/views_app/solicitudes/solicitudes_layout.dart';
import 'package:cliente_digital/src/views_app/tickets/tickets_layout.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DashBoardController extends GetxController{


  String ruta = RoutesGetX.dash2;

  bool isNotCargando = false;

  bool isMenuOpen = true;
  bool isMenuExist = true;

  /// Colores del dashboard
  Color colorMenu = Color.fromRGBO(196, 196, 196, 1.0);
  Color colorNav = Colors.black;
  Color colorFondo = Colors.white;
  Color colorSombra = Colors.grey;


  /// Nombre del Usuario
  String nombreUsuario = 'Usuario de Prueba';

  // Assets
  AssetImage assetImage = AssetImage('assets/img/particles.jpg');


  @override
  void onInit() {
    // TODO: implement onInit
    print('cntrolador del dashboard funcionando correctamente');
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    this.isNotCargando = true;
    update(['idMenu']);
    super.onReady();
  }

  void openCloseMenu(){
    this.isMenuOpen = !this.isMenuOpen;
    update(['idMenu']);
  }

  void ocultarMenu(){
    this.isMenuExist = !this.isMenuExist;
    update((['idMenu']));
  }

  // Widget rutaGet() {
  //   if (this.ruta == RoutesGetX.dash2) {
  //     update(['rutaWiew']);
  //     return DashBoardView();
  //   }
    Widget rutaGet() {
    if (this.ruta == RoutesGetX.dash2) {
      update(['rutaWiew']);
      return DetalleCreditoWeb();
    }
    // Creditos
    if (this.ruta == RoutesGetX.creditos) {
      update(['rutaWiew']);
      return CreditosLayuot();
    }
    if (this.ruta != RoutesGetX.detalleCreditos) {
      update(['rutaWiew']);
      return DetalleCreditoWeb();
    }

    if (this.ruta == RoutesGetX.solicitudes) {
      update(['rutaWiew']);
      return SolicitudesLayout();
    }
    if (this.ruta == RoutesGetX.contacto) {
      update(['rutaWiew']);
      return ContactoLayout();
    }
    if (this.ruta == RoutesGetX.notificaciones) {
      update(['rutaWiew']);
      return NotificacionesLayout();
    }
    if (this.ruta == RoutesGetX.tickets) {
      update(['rutaWiew']);
      return TicketsLayout();
    }
    if (this.ruta == RoutesGetX.politicasLegales) {
      update(['rutaWiew']);
      return PoliticasLegalesLayout();
    }
    if (this.ruta == RoutesGetX.ofertas) {
      update(['rutaWiew']);
      return OfertasLayout();
    }
    if (this.ruta != RoutesGetX.ofertas) {
      update(['rutaWiew']);
      return OfertasLayout();
    }
    if (this.ruta != RoutesGetX.detalleCreditos) {
      update(['rutaWiew']);
      return OfertasLayout();
    }



    update(['rutaWiew']);
    return DashBoardView();
  }

  void updateMenuLateral(){
    update(['menuLateralId']);
  }




}