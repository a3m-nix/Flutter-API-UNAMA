import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_proyek_nim/app/data/siswa_model.dart';
import 'package:flutter_proyek_nim/app/data/siswa_provider.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SiswaFormController extends GetxController {
  TextEditingController txtNisn = TextEditingController();
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtKelas = TextEditingController();
  TextEditingController txtTanggalLahir = TextEditingController();
  var pathFile = "".obs;
  void onTapPicker(var type) async {
    final ImagePicker _picker = ImagePicker();
    XFile? image;
    if (type == 'galeri') {
      image = await _picker.pickImage(
        source: ImageSource.gallery,
        preferredCameraDevice: CameraDevice.rear,
      );
    }
    if (type == 'camera') {
      image = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 75,
      );
    }

    if (image != null) {
      pathFile.value = image.path;
    }
  }

  void addData() {
    String nisn = txtNisn.text;
    String nama = txtNama.text;
    String kelas = txtKelas.text;
    String tanggalLahir = txtTanggalLahir.text;

    if (nisn.isEmpty ||
        nama.isEmpty ||
        kelas.isEmpty ||
        tanggalLahir.isEmpty ||
        pathFile.value.isEmpty) {
      Get.snackbar(
        "Error",
        "Data tidak boleh kosong",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    SiswaModel model = SiswaModel(
      nisn: nisn,
      nama: nama,
      kelas: kelas,
      tanggalLahir: tanggalLahir,
      foto: pathFile.value,
    );
    EasyLoading.show();
    SiswaProvider().postData(model).then((value) {
      EasyLoading.dismiss();
      if (value.statusCode == 201) {
        Get.snackbar(
          "Yeay...",
          "Data berhasil ditambahkan",
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.back();
      } else {
        Get.snackbar(
          "Ops.. Terjadi Kesalahan",
          "Gagal menambahkan data, ${value.statusText.toString()}",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    });
  }
}
