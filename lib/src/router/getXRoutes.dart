import 'package:cliente_digital/src/dashboard/pages/dashboard_page.dart';
import 'package:cliente_digital/src/dashboard/views/web/dashboard_web_view.dart';
import 'package:cliente_digital/src/inicio/loader_page/pages/loader_page.dart';
import 'package:cliente_digital/src/inicio/login_page/pages/login_page.dart';
import 'package:cliente_digital/src/views_app/contacto/contacto_layout.dart';
import 'package:cliente_digital/src/views_app/creditos/creditos_layout.dart';
import 'package:cliente_digital/src/views_app/notificaciones/notificaciones_layout.dart';
import 'package:cliente_digital/src/views_app/ofertas/ofertas_layout.dart';
import 'package:cliente_digital/src/views_app/politicas_legales/politicas_legales_layout.dart';
import 'package:cliente_digital/src/views_app/solicitudes/solicitudes_layout.dart';
import 'package:cliente_digital/src/views_app/tickets/tickets_layout.dart';
import 'package:get/get.dart';

import '../../main.dart';

class RoutesGetX{

  static String main =  '/main';
  static String login =  '/login';
  static String dashboard = '/';
  static String loader = '/loader';

  /// Rutas de los Layouts o Views
  static String dash2 = '/dash2';

  /// Rutas de los creditos
  static String creditos = '/creditos';
  static String detalleCreditos = '/detalleCreditos';

  static String solicitudes = '/solicitudes';
  static String contacto = '/contacto';
  static String notificaciones = '/notificaciones';
  static String tickets = '/tickets';
  static String politicasLegales = '/politicas_legales';
  static String ofertas = '/ofertas';



  static List<GetPage> routesGetx(){
    return <GetPage>[
      GetPage(name: main, page: ()=> MyApp()),
      GetPage(name: login, page: ()=>LoginPage()),
      GetPage(name: dashboard, page: ()=>DashBoard()),
      GetPage(name: loader, page: ()=>LoaderPage()),

      /// Views de Loyouts
      GetPage(name: dash2, page: () => DashBoardView()),

      /// Creditos
      GetPage(name: creditos, page: () => CreditosLayuot()),
      GetPage(name: detalleCreditos, page: () => CreditosLayuot()),


      GetPage(name: solicitudes, page: () => SolicitudesLayout()),
      GetPage(name: contacto, page: () => ContactoLayout()),
      GetPage(name: notificaciones, page: () => NotificacionesLayout()),
      GetPage(name: tickets, page: () => TicketsLayout()),
      GetPage(name: politicasLegales, page: () => PoliticasLegalesLayout()),
      GetPage(name: ofertas, page: () => OfertasLayout()),
    ];
  }

  static List<String> routesString(){
    return <String>[
      main,
      login,
      dashboard,
      loader,
      dash2,
      contacto,
      creditos
    ];
  }



}