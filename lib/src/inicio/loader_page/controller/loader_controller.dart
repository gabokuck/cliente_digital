import 'package:cliente_digital/src/router/getXRoutes.dart';
import 'package:get/get.dart';

class LoaderController extends GetxController{

  @override
  void onReady() {
    // TODO: implement onReady
    this.irLoadingPage();
    super.onReady();
  }

  void irLoadingPage(){
    Future.delayed(Duration(seconds: 1), (){
      Get.offAllNamed(RoutesGetX.dashboard);
    });
  }


}