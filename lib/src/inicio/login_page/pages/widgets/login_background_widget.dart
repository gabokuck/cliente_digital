import 'package:cliente_digital/src/constantes/constantes.dart';
import 'package:flutter/material.dart';

class LoginBackGroundWidget extends StatelessWidget {
  const LoginBackGroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Constantes.colorPrimario,
                // Colors.orange,
                Constantes.colorSecundario,
              ],
              stops: [
                0.3,
                // 0.5,
                0.8
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter
          )
      ),);
  }
}