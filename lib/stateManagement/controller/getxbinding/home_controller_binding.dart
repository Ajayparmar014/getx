import 'package:get/instance_manager.dart';
import 'package:getx2/statemanagement/controller/getxbinding/home_controller.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
