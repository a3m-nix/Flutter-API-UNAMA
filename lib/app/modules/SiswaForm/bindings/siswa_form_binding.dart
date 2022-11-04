import 'package:get/get.dart';

import '../controllers/siswa_form_controller.dart';

class SiswaFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SiswaFormController>(
      () => SiswaFormController(),
    );
  }
}
