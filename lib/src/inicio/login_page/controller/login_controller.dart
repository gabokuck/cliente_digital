
import 'package:cliente_digital/src/dashboard/pages/dashboard_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  bool isCargando = false;
  bool? isUsuarioExiste;
  bool? isPasswordCorrecta;

  bool isPasarViewUser = false;

  String usuario = '';
  String password = '';




  void userChanged(String valor){
    usuario = valor;
  }

  void passwordChanged(String valor){
    password = valor;
  }

  void validarUsuario(){

    if(usuario == 's2credit'){
      this.isUsuarioExiste = true;
      update(['idMensaje']);
      Future.delayed(Duration(seconds: 1), (){
        this.isUsuarioExiste = null;
        this.isPasarViewUser = true;
        update(['idMensaje', 'idFormulario']);
      });
    }else{
      this.isUsuarioExiste = false;
      update(['idMensaje']);
      Future.delayed(Duration(seconds: 1), (){
        this.isUsuarioExiste = null;
        update(['idMensaje']);
      });
    }

  }

  void validarPassword(){

    if(password == '123456'){
      this.isUsuarioExiste = true;
      update(['idMensaje']);
      Future.delayed(Duration(seconds: 1), (){
        this.isUsuarioExiste = null;
        this.isPasarViewUser = true;
        update(['idMensaje', 'idFormulario']);
        Get.to(() => DashBoard());
      });
    }else{
      this.isUsuarioExiste = false;
      update(['idMensaje']);
      Future.delayed(Duration(seconds: 1), (){
        this.isUsuarioExiste = null;
        update(['idMensaje']);
      });
    }

  }

}