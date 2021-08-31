import 'package:cliente_digital/src/dashboard/views/web/dashboard_web_view.dart';
import 'package:cliente_digital/src/router/getXRoutes.dart';
import 'package:cliente_digital/src/themes/theme_local.dart';
import 'package:cliente_digital/src/views_app/ofertas/ofertas_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: temaLocal(),
      navigatorKey: Get.key,
      title: 'Cliente Digital',
      initialRoute: RoutesGetX.loader,
      getPages: RoutesGetX.routesGetx(),
      unknownRoute: GetPage(name: 'sin_ruta', page: () => DashBoardView()),
      onGenerateRoute: (RouteSettings settings){

        return MaterialPageRoute(
            builder: (BuildContext context) { return OfertasLayout();  }
            );
      },
    );
  }
}
