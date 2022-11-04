import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_proyek_nim/app/data/register_provider.dart';
import 'package:flutter_proyek_nim/app/routes/app_pages.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void onTapButtonSimpan() {
    String name = txtName.text;
    String email = txtEmail.text;
    String password = txtPassword.text;
    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Proses Gagal",
        'Data tidak boleh kosong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    EasyLoading.show();
    var dataRegistrasi = {
      "name": name,
      "email": email,
      "password": password,
    };
    RegisterProvider().postData(dataRegistrasi).then((Response response) {
      var responseBody = response.body;
      EasyLoading.dismiss();
      if (response.statusCode == 201) {
        Get.snackbar(
          "Success",
          "Data berhasil ditambahkan",
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        txtName.text = "";
        txtEmail.text = "";
        txtPassword.text = "";
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

  void onTapTextLogin() {
    Get.toNamed(Routes.LOGIN);
  }
}
