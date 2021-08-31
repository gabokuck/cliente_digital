import 'package:animate_do/animate_do.dart';
import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:cliente_digital/src/inicio/login_page/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WebView extends StatelessWidget {
  const WebView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1000,
        height: Get.size.height * 0.5,
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              // BoxShadow(
              //     color: Colors.black45,
              //     offset: Offset(10, 10),
              //     blurRadius: 10// changes position of shadow
              // ),
              // BoxShadow(
              //     color: Colors.black45,
              //     offset: Offset(0, 0),
              //     blurRadius: 10// changes position of shadow
              // ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(0.0))
        ),
        child: Row(
          children: [
            Expanded(
              child: LoginFormulariosWidget(),
            ),
            Expanded(
                child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    child: Image.asset(
                      'assets/logos/reunion.png', fit: BoxFit.cover,)
                )
            )
          ],
        ),
      ),
    );
  }
}

class LoginFormulariosWidget extends StatelessWidget {
  const LoginFormulariosWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      id: 'idFormulario',
      builder: (logic) {
        if(logic.isPasarViewUser){
          return _FormPass();
        }
        return _FormUser();
      },
    );
  }
}





class _FormUser extends StatelessWidget {
  const _FormUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController logic = Get.put(LoginController());
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Container(
              width: 200,
              child: Text('Usuario', style: TextStyle(
                  color: Constantes.colorPrimario,
                  fontWeight: FontWeight.bold),)
          ),
          Container(
              width: 200,
              height: 40,
              child: TextField(
                key: Key('dos'),
                onChanged: logic.userChanged,
                decoration: InputDecoration(

                ),
              )
          ),
          SizedBox(height: 30,),
          Container(
            width: 200,
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Constantes.colorPrimario)
              ),
              onPressed: logic.validarUsuario,
              child: Text('SIGUIENTE'),
            ),
          ),
          GetBuilder<LoginController>(
            id: 'idMensaje',
            builder: (_ctx) {
              if(_ctx.isUsuarioExiste == true){
                return Column(
                  children: [
                    SizedBox(height: 10,),
                    FadeIn(
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.green,
                        width: 200,
                        height: 40,
                        child: Text('Usuario válido', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    ),
                    SizedBox(height: 10,)
                  ],
                );
              }
              if(_ctx.isUsuarioExiste == false){
                return Column(
                  children: [
                    SizedBox(height: 10,),
                    FadeIn(
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.red,
                        width: 200,
                        height: 40,
                        child: Text('Su usuario no existe', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    ),
                    SizedBox(height: 10,)
                  ],
                );
              }

              return SizedBox(height: 0,);


            },
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.topRight,
            width: double.infinity,
            height: 40,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                  child: Text('Recuperar Información', style: GoogleFonts.montserrat(),)),
            )
            ,
          )
        ],
      ),
    );
  }
}

class _FormPass extends StatelessWidget {
  const _FormPass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    LoginController logic = Get.put(LoginController());

    return FadeIn(
      duration: Duration(seconds: 1),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
                width: 200,
                child: Text('Contraseña', style: TextStyle(
                    color: Constantes.colorPrimario,
                    fontWeight: FontWeight.bold),)
            ),
            Container(
                width: 200,
                height: 40,
                child: TextField(
                  obscureText: true,
                  key: Key('uno'),
                  onChanged: logic.passwordChanged,
                )
            ),
            SizedBox(height: 30,),
            Container(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: logic.validarPassword,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Constantes.colorPrimario)
                ),
                child: Text('CONFIRMAR'),
              ),
            ),
            GetBuilder<LoginController>(
              id: 'idMensaje',
              builder: (_ctx) {
                if(_ctx.isUsuarioExiste == true){
                  return Column(
                    children: [
                      SizedBox(height: 10,),
                      FadeIn(
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.green,
                          width: 200,
                          height: 40,
                          child: Text('Contraseña válida', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        ),
                      ),
                      SizedBox(height: 10,)
                    ],
                  );
                }
                if(_ctx.isUsuarioExiste == false){
                  return Column(
                    children: [
                      SizedBox(height: 10,),
                      FadeIn(
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.red,
                          width: 200,
                          height: 40,
                          child: Text('Contraseña incorrecta', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        ),
                      ),
                      SizedBox(height: 10,)
                    ],
                  );
                }

                return SizedBox(height: 0,);


              },
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              alignment: Alignment.topRight,
              width: double.infinity,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_outlined),
                            SizedBox(width: 10,),
                            Text('Regresar', style: GoogleFonts.montserrat(),),
                          ],
                        )),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        child: Text('Recuperar Información', style: GoogleFonts.montserrat(),)),
                  ),
                ],
              )
              ,
            )
          ],
        ),
      ),
    );
  }
}