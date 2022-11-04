import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_proyek_nim/app/data/user_provider.dart';
import 'package:flutter_proyek_nim/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class LoginController extends GetxController {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void onTapButtonLogin() {
    String email = txtEmail.text;
    String password = txtPassword.text;
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Proses Gagal",
        'Data tidak boleh kosong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    EasyLoading.show();
    var dataLogin = {
      "email": email,
      "password": password,
    };
    UserProvider().login(dataLogin).then((Response response) {
      var responseBody = response.body;
      EasyLoading.dismiss();
      if (response.statusCode == 200) {
        var responseData = responseBody['data'];
        SpUtil.putString('token', responseData['token']);
        SpUtil.putString('id', responseData['id'].toString());
        SpUtil.putString('name', responseData['name']);
        SpUtil.putString('email', responseData['email']);
        SpUtil.putBool('isLogin', true);
        Get.offAllNamed(Routes.HOME);
      } else if (response.statusCode == 422) {
        Get.snackbar(
          "Proses Gagal",
          responseBody['message']!,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          "Proses Gagal",
          "Terjadi Kesaahan ",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    });
  }
}
