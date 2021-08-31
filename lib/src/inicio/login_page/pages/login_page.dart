
import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/inicio/login_page/controller/login_controller.dart';
import 'package:cliente_digital/src/inicio/login_page/views/mobile/login_mobile_view.dart';
import 'package:cliente_digital/src/inicio/login_page/views/web/login_web_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (logic) {
        return Scaffold(
            body: Stack(
              children: [
                // LoginBackGroundWidget(),
                Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  color: Constantes.colorFondo,
                  // child: Image.network('https://nowmusicradio.com/wp-content/uploads/2019/04/fondo-borroso-blanco_1034-249.jpg', fit: BoxFit.fitWidth,),
                ),
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    if (constraints.maxWidth > 992) {
                      return WebView();
                    }
                    return MobileView();
                  },
                ),
              ],
            )
        );
      },
    );
  }
}






