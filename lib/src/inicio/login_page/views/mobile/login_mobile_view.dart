import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/inicio/login_page/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (logic) {
        return Stack(
          children: [
            Container(
              color: Colors.white,
              width: Get.size.width * 1.0,
              height: Get.size.height * 1.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(fit: BoxFit.fitWidth ,child: Text('Inicia sesión', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 30),)),
                  SizedBox(height: 30,),
                  FittedBox(fit: BoxFit.fitWidth,child: Text('Correo electrónico', style: GoogleFonts.montserrat(),)),
                  SizedBox(height: 10,),
                  Container(
                    height: 45,
                    child: TextField(
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constantes.colorPrimario, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 0.5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:40,),
                  FittedBox(fit: BoxFit.fitWidth,child: Text('Contraseña', style: GoogleFonts.montserrat(),)),
                  SizedBox(height: 10,),
                  Container(
                    height: 45,
                    child: TextField(
                      decoration: new InputDecoration(
                        suffixIcon: Container(
                          alignment: Alignment.center,
                          height: double.maxFinite,
                          width: 80,
                          child: Text('Mostrar', style: GoogleFonts.montserrat(fontSize: 11, fontWeight: FontWeight.w800),),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constantes.colorPrimario, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 0.5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      height: 60,
                      width: 200,
                      child: ElevatedButton(
                          onPressed: (){

                          },
                          child: Text('Iniciar sesión', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 15),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Constantes.colorPrimario)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}


