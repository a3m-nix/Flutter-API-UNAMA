import 'package:get/get.dart';

import '../controllers/siswa_list_controller.dart';

class SiswaListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SiswaListController>(
      () => SiswaListController(),
    );
  }
}
