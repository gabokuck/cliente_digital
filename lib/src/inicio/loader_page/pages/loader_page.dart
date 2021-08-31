import 'package:animate_do/animate_do.dart';
import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/inicio/loader_page/controller/loader_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoaderController>(
      init: LoaderController(),
      builder: (logic) {
        return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: ZoomIn(
                duration: Duration(milliseconds: 400),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      child: Opacity(
                        opacity: 0.6,
                        child: Image.asset(
                          'assets/logos/LogoS2.png', fit: BoxFit.fitWidth, ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 180,
                      height: 5,
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Constantes.colorPrimario,
                      ),
                    )
                  ],
                ),
              ),
            )
        );
      },
    );
  }
}
