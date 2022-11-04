import 'package:get/get.dart';

import '../controllers/profil_form_controller.dart';

class ProfilFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilFormController>(
      () => ProfilFormController(),
    );
  }
}
