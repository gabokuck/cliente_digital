import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/dashboard/controllers/admin_controller.dart';
import 'package:cliente_digital/src/dashboard/views/mobile/dashboard_mobile_wiew.dart';
import 'package:cliente_digital/src/dashboard/views/web/dashboard_web_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
        init: DashBoardController(),
        builder: (logic) {
          return Scaffold(
            backgroundColor: Constantes.colorFondo,
              body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if(constraints.maxWidth > 1000){
                    return DashBoardWebView();
                  }
                  return DashBoardMobileView();
                },
              )
          );
        }
    );
  }
}









